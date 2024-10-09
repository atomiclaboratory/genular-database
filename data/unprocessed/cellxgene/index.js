import puppeteer from "puppeteer";

import { fileURLToPath } from "url";
import { dirname } from "path";

import { pipeline as pipelineCallback } from "stream";
import { promisify } from "util";
import fetch from "node-fetch";
import * as fs from "fs";

const pipeline = promisify(pipelineCallback);

// Get the URL of the current module
const currentModuleURL = import.meta.url;

// Convert the URL to a file path
const currentModulePath = fileURLToPath(currentModuleURL);

// Get the directory path of the current module
const currentModuleDir = dirname(currentModulePath);

let isHeadless = false;
if (currentModuleDir !== "/mnt/data/projects/atomic/data/unprocessed/cellxgene") {
    isHeadless = true;
}

console.log("Starting cellxgene. isHeadless: " + isHeadless);
const maxRetries = 3;

(async () => {
    const regex = /[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/g;
    const gathered_data = [];
    let gathered_data_bash = "";

    const browser = await puppeteer.launch({
        headless: isHeadless,
    });
    const page = await browser.newPage();
    // Add this line to intercept AJAX requests
    await page.setRequestInterception(true);
    page.on("request", (request) => {
        if (request.resourceType() === "xhr") {
            console.log("Intercepted:", request.url());
        }
        request.continue();
    });

    // set user agent (override the default headless User Agent)
    await page.setUserAgent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36");

    await page.goto("https://cellxgene.cziscience.com/collections", { waitUntil: "networkidle2" });
    // Set screen size
    await page.setViewport({ width: 1080, height: 1024 });

    await page.waitForSelector('[data-testid="collection-link"]');

    await autoScroll(page);

    const hrefs = await page.evaluate(() => {
        return Array.from(document.getElementsByTagName("a"), (a) => a.href);
    });

    // loop hrefs
    const collections = [];
    for (let i = 0; i < hrefs.length; i++) {
        if (hrefs[i].startsWith("https://cellxgene.cziscience.com/collections/")) {
            // add to collections array
            collections.push(hrefs[i]);
        }
    }

    console.log("Found: " + collections.length + " collections.");
    // loop collections
    for (let i = collections.length - 1; i >= 0; i--) {
        let collection_id = collections[i].replace("https://cellxgene.cziscience.com/collections/", "");

        console.log("===> Opening " + i + " collection: " + collection_id);
        console.log("===> URL:  " + collections[i]);

        await page.goto(collections[i], { waitUntil: "networkidle2" });
        await autoScroll(page);
        await page.waitForSelector('[data-testid="dataset-download-button"]');

        const buttons = await page.$$('button[data-testid="dataset-download-button"]');

        let m_c = 0;
        for (const overlay of buttons) {
            m_c++;

            console.log("Opening " + m_c + " modal");
            await overlay.hover();
            await overlay.click();

            await page.waitForNetworkIdle();

            try {
                await page.waitForFunction(() => document.querySelector(".MuiDialogContent-root"), { timeout: 10000 });
            } catch (error) {
                console.error("Error: MuiDialogContent-root not found within the specified timeout");
                continue;
            }

            try {
                let button = await page.waitForSelector('input[value="H5AD"]', { visible: true, timeout: 10000 });
                // Click the button and wait for the AJAX request to complete
                await Promise.all([
                    page
                        .waitForResponse((response) => response.url().includes("dp/v1/datasets") && response.url().includes("asset") && response.status() === 200, {
                            timeout: 10000,
                        })
                        .then((response) => {
                            console.log("Response URL:", response.url());
                        }),
                    button.click(),
                ]);
            } catch (error) {
                console.error("Timeout exceeded while waiting for the H5AD");
                continue;
            }

            try {
                let download_code = await page.waitForSelector("code", { visible: true, timeout: 10000 });
            } catch (error) {
                console.error("Timeout exceeded while waiting for the download_code:", error);
                continue;
            }

            let inner_html = await page.evaluate(() => document.querySelector("code").innerText);
            let dataset_id = false;

            let matches = inner_html.matchAll(regex);
            for (let match of matches) {
                dataset_id = match[0];
            }

            let close_button = false;

            let extensions = ["json", "h5ad", "error"];
            let datasetExists = false;
            let dataset_check;

            for (let extension of extensions) {
                dataset_check = "./bulk/" + dataset_id + "." + extension;
                if (fs.existsSync(dataset_check)) {
                    console.log("===> Dataset (" + extension + ") already exists: " + dataset_check);
                    datasetExists = true;
                    break;
                } else {
                    console.log("===> Dataset does not exist: " + dataset_check);
                }
            }

            if (datasetExists) {
                // Use XPath to target the button with the exact class and text "Cancel"
                const cancelButtons = await page.$x(
                    "//div[contains(@class, 'bp4-dialog-footer')]//button[contains(@class, 'bp4-button') and contains(@class, 'bp4-minimal') and normalize-space(.)='Cancel']"
                );

                if (cancelButtons.length > 0) {
                    await cancelButtons[0].click();
                    await page.waitForTimeout(150);
                    console.log("===> Closing modal before proceeding");
                } else {
                    console.log("===> Cancel button not found");
                }

                continue;
            }

            let final_dataset = {
                collection_id: collection_id,
                dataset_id: dataset_id,
                download_text: inner_html,
            };

            console.log("===> Final datasets: ", final_dataset);

            gathered_data_bash += inner_html + "\r\n";
            gathered_data.push(final_dataset);

            let cmd_clean = inner_html.replace("curl -o local.h5ad", "curl -o " + currentModuleDir + "/bulk/" + dataset_id + ".h5ad");
            cmd_clean = cmd_clean + " > /dev/null 2>&1";

            //console.log("===> Downloading file (cmd_clean): " + cmd_clean);

            const url = extractURL(cmd_clean);
            const filePath = currentModuleDir + "/bulk/" + dataset_id + ".h5ad";

            console.log("===> Downloading file: " + url);

            if (url === null) {
                console.error("Failed to extract URL from command:", cmd_clean);
                continue;
            }

            try {
                await downloadFile(url, filePath, maxRetries);
                console.log("File downloaded successfully");
            } catch (error) {
                console.error("Failed to download file:", error);
            }

            try {
                // Wait for the Cancel button using a CSS selector and a generous timeout
                await page.waitForSelector("button.MuiButton-root", { visible: true, timeout: 5000 });
                
                // Find the Cancel button using its text
                const buttons = await page.$$("button.MuiButton-root");
                let cancelButton = null;

                for (const button of buttons) {
                    const buttonText = await button.evaluate(node => node.innerText.trim());
                    if (buttonText === "Cancel") {
                        cancelButton = button;
                        break;
                    }
                }

                if (cancelButton) {
                    await cancelButton.click();
                    await page.waitForTimeout(150);
                    console.log("===> 1.1 Closing modal before proceeding");
                } else {
                    console.log("===> 1.1 Cancel button not found");
                }
            } catch (error) {
                console.error("Error occurred while trying to close modal:", error);
            }
        }
    }

    console.log("===> Closing browser");
    await browser.close();

    console.log("===> Writing links.json");
    const json = JSON.stringify(gathered_data);

    fs.writeFileSync("links.json", json, "utf8");

    fs.writeFileSync("gathered_data_bash", gathered_data_bash, "utf8");
})();

async function autoScroll(page) {
    await page.evaluate(async () => {
        await new Promise((resolve) => {
            var totalHeight = 0;
            var distance = 250;
            var timer = setInterval(() => {
                var scrollHeight = document.body.scrollHeight;
                window.scrollBy(0, distance);
                totalHeight += distance;

                if (totalHeight >= scrollHeight - window.innerHeight) {
                    clearInterval(timer);
                    resolve();
                }
            }, 100);
        });
    });
}

async function downloadFile(url, filePath, retries) {
    try {
        const response = await fetch(url);
        if (!response.ok) {
            throw new Error(`Failed to download: ${response.statusText}`);
        }

        const writer = fs.createWriteStream(filePath);
        await pipeline(response.body, writer);
        console.log("File downloaded successfully");
    } catch (error) {
        if (retries === 0) {
            throw error;
        }
        console.log(`Retrying download... (${maxRetries - retries + 1}/${maxRetries})`);
        await downloadFile(url, filePath, retries - 1);
    }
}

function extractURL(command) {
    const urlRegex = /(["']?(https?:\/\/[^\s>"']+))/;
    const match = command.match(urlRegex);
    if (match && match[1]) {
        return match[2]; // Return the URL portion of the match
    }
    return null;
}


function sleep(ms) {
    return new Promise((resolve) => {
        setTimeout(resolve, ms);
    });
}
