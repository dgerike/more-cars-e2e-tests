import path from 'path';
import {fileURLToPath} from 'url';
import fs from "fs";

// fix for "__dirname is not defined in ES module scope"
// -> recreating the __filename and __dirname functionality
const __filename = fileURLToPath(import.meta.url); // get the resolved path to the file
const __dirname = path.dirname(__filename); // get the name of the directory

// Removing all files and directories that might have been created while running the tests or reporters or sync scripts.
cleanupTestReports();
cleanupScreenshotsAndVideos();
cleanupMiscFiles();

/**
 * Removes the test report folder.
 */
function cleanupTestReports() {
    const targets = [
        `${__dirname}/../cypress/reports`,
    ];

    cleanup(targets);
}

/**
 * Removes the screenshots and videos for failed tests.
 */
function cleanupScreenshotsAndVideos() {
    const targets = [
        `${__dirname}/../cypress/screenshots`,
        `${__dirname}/../cypress/videos`,
    ];

    cleanup(targets);
}

/**
 * Removes the remaining files that might have been created.
 */
function cleanupMiscFiles() {
    const targets = [];

    cleanup(targets);
}

/**
 * Removes every file and directory that has been selected as target.
 */
function cleanup(targets) {
    targets.forEach(path => {
        fs.rmSync(path, {recursive: true, force: true});
        console.log(`"${path}" deleted`);
    });
}
