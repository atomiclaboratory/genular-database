// ChicpeaMaths.js

const P0 = [
    +0.000124818987,
    -0.001075204047,
    +0.005198775019,
    -0.019198292004,
    +0.059054035642,
    -0.151968751364,
    +0.319152932694,
    -0.531923007300,
    +0.797884560593,
];
const P1 = [
    -0.000045255659,
    +0.000152529290,
    -0.000019538132,
    -0.000676904986,
    +0.001390604284,
    -0.000794620820,
    -0.002034254874,
    +0.006549791214,
    -0.010557625006,
    +0.011630447319,
    -0.009279453341,
    +0.005353579108,
    -0.002141268741,
    +0.000535310849,
    +0.999936657524,
];

export function pol(x, c) {
    return c.reduce((r, c) => r * x + c, 0);
}

export function gauss(z) {
    if (z === 0) return 0.5;
    const y = Math.abs(z) / 2;
    const p = y >= 3 ? 1 : y < 1 ? pol(y * y, P0) * y * 2 : pol(y - 2, P1);
    return z > 0 ? (1 + p) / 2 : (1 - p) / 2;
}

const Ps = [-0.4, -3.3, -24, -85.5];
export function student(t, df) {
    const a = df - 0.5;
    const b = 48 * a * a;
    const y0 = (t * t) / df;
    const y = a * (y0 > 1e-6 ? Math.log(y0 + 1) : y0);
    const s = (pol(y, Ps) / (0.8 * y * y + 100 + b) + y + 3) / b + 1;
    return 2 * gauss(-s * (y ** 0.5));
}

export function welchsTTest(x, y) {
    const nX = x.length, nY = y.length;
    const nX1 = nX - 1, nY1 = nY - 1;

    // Handle cases where nX1 or nY1 are zero (i.e., one data point in array)
    if (nX1 <= 0 || nY1 <= 0) {
        return { p: NaN, t: NaN, df: NaN, meanX: NaN, meanY: NaN };
    }

    const meanX = x.reduce((r, v) => r + v, 0) / nX;
    const meanY = y.reduce((r, v) => r + v, 0) / nY;
    const varX = x.reduce((r, v) => r + (v - meanX) ** 2, 0) / nX1;
    const varY = y.reduce((r, v) => r + (v - meanY) ** 2, 0) / nY1;
    const avX = varX / nX, avY = varY / nY;

    const t = (meanX - meanY) / Math.sqrt(avX + avY);
    const df = Math.pow(avX + avY, 2) / (Math.pow(avX, 2) / nX1 + Math.pow(avY, 2) / nY1);
    const p = student(t, df);

    return { p, t, df, meanX, meanY };
}
