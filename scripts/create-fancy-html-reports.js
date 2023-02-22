const report = require("multiple-cucumber-html-reporter");

report.generate({
    jsonDir: "cypress/reports",
    reportPath: "cypress/reports/fancy-html",
    metadata: {
        browser: {
            name: "chrome",
            version: "109",
        },
        device: "Local test machine",
        platform: {
            name: "ubuntu",
            version: "22.10",
        },
    },
    customData: {
        title: "Run info",
        data: [
            { label: "Project", value: "More Cars" },
            { label: "Version", value: "-" },
            { label: "Branch", value: "main" },
            { label: "Cycle", value: "-" },
            { label: "Execution Start Time", value: "???" },
            { label: "Execution End Time", value: new Date() },
        ],
    },
});