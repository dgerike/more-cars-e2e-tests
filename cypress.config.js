const { defineConfig } = require("cypress");

module.exports = defineConfig({
  projectId: "zoms1v",
  reporter: "junit",

  reporterOptions: {
    mochaFile: "cypress/reports/test-results-[hash].xml",
  },

  videoCompression: 20,
  videoUploadOnPasses: false,
  viewportWidth: 1920,
  viewportHeight: 1080,

  e2e: {
    setupNodeEvents(on, config) {
      // implement node event listeners here
    },
  },
});
