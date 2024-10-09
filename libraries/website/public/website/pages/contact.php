<?php
include __DIR__ . '/include/head.php';




use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

// Check if the form has been submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Validate the CAPTCHA
    $captcha = isset($_POST['captcha']) ? strtoupper(trim($_POST['captcha'])) : '';


    if ($captcha !== 'FASTA') {
        echo "<div class='alert alert-danger text-center' role='alert'>Incorrect CAPTCHA answer.</div>";
    } else {
        $name = htmlspecialchars($_POST['name']);
        $surname = htmlspecialchars($_POST['surname']);
        $email = htmlspecialchars($_POST['email']);
        $intendedUse = htmlspecialchars($_POST['comments']);
        $restrict_ips = htmlspecialchars($_POST['restrict_ips']); // This field remains optional

        // Generate a unique API key
        $apiKey = md5($name.$surname.$email. "GENULAR");

        // Check if api key already exists
        $apiKeysPath = __DIR__ . '/../../../storage/apiKeys.json';
        $apiKeys = json_decode(file_get_contents($apiKeysPath), true);

        $isUnique = true;

        foreach ($apiKeys as $keyData) {
            if ($keyData['api_key'] === $apiKey) {
                $isUnique = false;
            }
        }
        
        if (!$isUnique) {
            echo "<div class='alert alert-danger text-center' role='alert'>An error occurred while generating your API key. API Key for your account already exists.</div>";
            return;
        }

        // Prepare the email content
        $emailContent = "<html><body>";
        $emailContent .= "<h1>API Key Request</h1>";
        $emailContent .= "<p><strong>Name:</strong> {$name}</p>";
        $emailContent .= "<p><strong>Surname:</strong> {$surname}</p>";
        $emailContent .= "<p><strong>Email:</strong> {$email}</p>";
        $emailContent .= "<p><strong>Intended Use Case:</strong><br>{$intendedUse}</p>";
        $emailContent .= "<p><strong>Restrict IPs:</strong> {$restrict_ips}</p>";
        $emailContent .= "<p>Generated API key: <strong>{$apiKey}</strong></p>";
        $emailContent .= "</body></html>";


        $mail = new PHPMailer(true);

        try {
            //Server settings
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth   = true;
            $mail->Username   = $_ENV['STMP_USERNAME'];  // SMTP username
            $mail->Password   = $_ENV['STMP_PASSWORD'];             // SMTP password
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
            $mail->Port       = 465;

            //Recipients
            $mail->setFrom('atomic.research.lab@gmail.com', 'aTomic Research Lab');
            $mail->addAddress('itomic@bu.edu');   // Add a recipient
            $mail->addAddress('atomic@bu.edu');   // Additional recipient

            // Content
            $mail->isHTML(true);  // Set email format to HTML
            $mail->Subject = 'GENULAR - API Key Request';
            $mail->Body    = $emailContent;  // This is your email content

            $mail->send();


            // Now, append the API key data to apiKeys.json

            $apiKeys[] = [
                "name" => $name,
                "surname" => $surname,
                "email" => $email,
                "api_key" => $apiKey,
                "restrict_ips" => $restrict_ips ? explode(", ", $restrict_ips) : [],
                "rate_limit" => 100,
                "rate_limit_period" => 90,
                "rate_limit_details" => [
                    "count" => 0, // Initialize as 0 usage
                    "timestamp" => time()
                ],
                "page_limit" => 1000
            ];
            file_put_contents($apiKeysPath, json_encode($apiKeys, JSON_PRETTY_PRINT));


            echo '<div class="alert alert-success text-center" role="alert">
                    Request submitted successfully. Your API key: <strong>' . $apiKey . '</strong><br>
                    <small><i>Note: This API key does not change and can be used multiple times. Please save it.</i></small>
                  </div>';
        } catch (Exception $e) {
            echo "<div class='alert alert-danger text-center' role='alert'>There was a problem with your request: {$mail->ErrorInfo}</div>";
        }
    }
}
?>

<main role="main" class="flex-shrink-0">
    <section id="home" class="full-screen-section py-5">
        <div class="container-lg">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="text-center mb-5">
                        <h2>Request an API Key</h2>
                        <p class="lead">
                            Submit the request form below to gain access to our API.
                        </p>
                        <small class="text-muted">
                            Standard genular API rate limits apply 
                            <a href="#" data-toggle="tooltip" title="You can make up to 100 requests every 90 seconds. If you exceed this limit, you'll need to wait before making more requests.">
                                <i class="fas fa-info-circle"></i>
                            </a>. For increased access, please contact us via <a href="mailto:atomic.research.lab@gmail.com?subject=Genular API Access Request">email</a>.
                            <br>
                            Page limit is 1000 items per request 
                            <a href="#" data-toggle="tooltip" title="The API returns up to 1,000 items per page. If there are more items, you'll need to make additional requests to get the next pages.">
                                <i class="fas fa-info-circle"></i>
                            </a>.
                        </small>
                    </div>
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <form method="POST" action="/contact">
                                <div class="form-group">
                                    <label for="name">Name:*</label>
                                    <input type="text" class="form-control" id="name" name="name" required>
                                </div>
                                <div class="form-group">
                                    <label for="surname">Surname:*</label>
                                    <input type="text" class="form-control" id="surname" name="surname" required>
                                </div>
                                <div class="form-group">
                                    <label for="email">Email Address:*</label>
                                    <input type="email" class="form-control" id="email" name="email" required>
                                </div>
                                <div class="form-group">
                                    <label for="comments">Comments:</label>
                                    <textarea class="form-control" id="comments" name="comments" rows="3"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="restrict_ips">Restrict IP Access (Optional, comma-separated):</label>
                                    <input type="text" class="form-control" id="restrict_ips" name="restrict_ips" placeholder="::1, 127.0.0.1, 155.41.174.249">
                                </div>
                                <div class="form-group">
                                    <label for="captcha">What is the standard file format for storing nucleotide sequence data? (Hint: five-letter acronym)*</label>
                                    <input type="text" maxlength="5" class="form-control" id="captcha" name="captcha" required>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit Request</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

<?php include __DIR__ . '/include/bottom.php'; ?>
