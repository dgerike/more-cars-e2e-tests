const { defineConfig } = require("cypress");
const cucumber = require('cypress-cucumber-preprocessor').default;

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
    specPattern: '**/*.feature',
    setupNodeEvents(on, config) {
      on('file:preprocessor', cucumber());
    },
  },
});
