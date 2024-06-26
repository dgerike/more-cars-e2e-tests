const { defineConfig } = require("cypress");
const createBundler = require("@bahmutov/cypress-esbuild-preprocessor");
const preprocessor = require("@badeball/cypress-cucumber-preprocessor");
const createEsbuildPlugin = require("@badeball/cypress-cucumber-preprocessor/esbuild");

async function setupNodeEvents(on, config) {
  await preprocessor.addCucumberPreprocessorPlugin(on, config);

  on(
      "file:preprocessor",
      createBundler({
        plugins: [createEsbuildPlugin.default(config)],
      })
  );

  // Make sure to return the config object as it might have been modified by the plugin.
  return config;
}

module.exports = defineConfig({
  projectId: "zoms1v",
  reporter: "junit",

  reporterOptions: {
    mochaFile: "cypress/reports/xml/test-results-[hash].xml",
  },

  viewportWidth: 1920,
  viewportHeight: 1080,

  e2e: {
    responseTimeout: 60000,
    baseUrl: 'https://more-cars.net',
    specPattern: '**/*.feature',
    setupNodeEvents,
  },
});
