# More Cars - e2e Test Suite
[![Pipeline](https://github.com/dgerike/more-cars-e2e-tests/actions/workflows/pipeline.yaml/badge.svg?branch=main)](https://github.com/dgerike/more-cars-e2e-tests/actions/workflows/pipeline.yaml)
[![Cypress Tests](https://img.shields.io/endpoint?url=https://cloud.cypress.io/badge/simple/zoms1v/main&style=flat&logo=cypress)](https://cloud.cypress.io/projects/zoms1v/runs)

This repo contains the end2end tests for [More Cars](https://more-cars.net). 
They are written as [Gherkin](https://cucumber.io/docs/gherkin/reference/) scenarios 
and executed in [Cypress](https://www.cypress.io/).

This project is meant for educational purposes.
Use it to get an idea how Gherkin scenarios work, 
how they are hooked up with Cypress, 
and how they can be run in GitHub as a (parallelized) CI job.  

## Installation
1. Install Node.js: https://nodejs.org/en/
2. Clone the repo: https://github.com/dgerike/more-cars-e2e-tests 
3. Open the console
4. Navigate to the path of the cloned repo
5. Run `npm install`
6. Run `npx cypress verify` to check if Cypress has been installed correctly

## Running tests
Cypress can be started in two modes: `open` mode and `run` mode. 
The first one opens a GUI and is used when developing the tests.
The other mode is for executing the test suite.

### Running tests in the GUI
1. Open a console and navigate to the path of the cloned repo
2. Run `npx cypress open`
3. A window with a welcome screen should open 
4. Select "E2E Testing"
5. Select one of the available browsers and click "Start E2E Testing in ..."
6. Click on any of the tests to run it
7. Use the search field to filter tests
8. Use the browser toggle to switch browsers on the fly

### Running tests on the command line
1. Open a console and navigate to the path of the cloned repo
2. Run `npm test` or `npx cypress run`
3. The whole test suite should be executed in headless mode (meaning, without the browser popping up)
4. At the end a table with the test results should be shown
5. Use the parameter `spec` to only run a subset of tests, e.g. `npx cypress run --spec "cypress/integration/e2e/Done/*"` to only run all tests that are completely implemented
6. See https://docs.cypress.io/guides/guides/command-line#cypress-run for more options

## Test Synchronization

### Test Scenarios Download

The test scenarios are located in the folder `cypress/integration/e2e`, 
but their management happens in a different tool.
The scenarios have identifiers in their filenames (e.g. `E2E-29`), 
because they are represented as issues in the project management tool _Jira_ (with _Xray_ extension).

To download these scenarios there is a script called `scripts/download-gherkin-scenarios.sh`.
It requires the `XRAY_API_CLIENT_ID` and the `XRAY_API_CLIENT_SECRET` to be set as environment variables before starting the script.
See https://docs.getxray.app/display/XRAYCLOUD/Global+Settings%3A+API+Keys on how to obtain these credentials.
```
export XRAY_API_CLIENT_ID=...
export XRAY_API_CLIENT_SECRET=...

npm run download-scenarios
```

### Test Reports

When running the test scenarios there are multiple ways to generate test reports.

#### Console

The easiest way is the command line. 
As described above, running the command `npm test` will execute every scenario in the test suite.
For each test there will be a small report printed to the console. 
At the end a summary will be shown, with information on how long each test took, how many failed, and so on.

There is no configuration required.

#### JUnit XML

A common format for test reports is `JUnit XML`. 
It is supported by many tools and is often used in CI pipelines to have a standardized reporting across all jobs.

Cypress supports this format out of the box.
It can be configured in the `cypress.json` with the following snippet:
```
  "reporter": "junit",
  "reporterOptions": {
    "mochaFile": "cypress/reports/test-results-[hash].xml"
  },
```

See https://docs.cypress.io/guides/tooling/reporters for more information.

#### Cucumber JSON

All tests in this project are written as `Gherkin` scenarios.
But `JUnit XML` is not very good at creating reports for this kind of tests.
To be able to create detailed Gherkin test reports we have to switch to `Cucumber JSON`. 

Cypress doesn't support this format out of the box, but the plugin `cypress-cucumber-preprocessor` does.
We already use it to transform the Gherkin scenarios to a format that Cypress can understand.
It can be configured in the `package.json` with the following snippet:
```
  "cypress-cucumber-preprocessor": {
    "cucumberJson": {
      "generate": true,
      "outputFolder": "cypress/reports",
      "filePrefix": "",
      "fileSuffix": ".cucumber"
    }
  },
```

See https://www.npmjs.com/package/cypress-cucumber-preprocessor#user-content-output for more information.

#### Cypress Dashboard

The "Cypress Dashboard" is a (paid) service by the company that created Cypress.
It allows to upload test results and provides good tools to analyze them afterwards. 

To activate the uploading to the Cypress Dashboard the following information needs to be provided:
* the `projectId` in the `cypress.json`
* the record key as environment variable: `export CYPRESS_RECORD_KEY=...`
* the `--record` flag in the cli command: `npx cypress run --record`

See https://docs.cypress.io/guides/dashboard/projects for more information.

The results for this project can be seen here: https://dashboard.cypress.io/projects/zoms1v/runs

#### Xray/Jira

Another way to visualize the test results is test management tool `Xray`.
It is a (paid) plugin for the project management tool `Jira`.
It allows to write, manage and execute tests.
It integrates very well with Jira and is capable of creating comprehensive test reports.

The Xray API offers multiple options to upload test results into their system, see https://docs.getxray.app/display/XRAYCLOUD/Import+Execution+Results+-+REST+v2.  
In this project we use the option `Cucumber JSON results Multipart`.
The code is wrapped in the script `upload-test-results-to-xray.sh`.

It requires the `XRAY_API_CLIENT_ID` and the `XRAY_API_CLIENT_SECRET` to be set as environment variables before starting the script.
See https://docs.getxray.app/display/XRAYCLOUD/Global+Settings%3A+API+Keys on how to obtain these credentials.
```
export XRAY_API_CLIENT_ID=...
export XRAY_API_CLIENT_SECRET=...

npm run upload-test-results
```
