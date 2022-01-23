# More Cars - e2e Test Suite
[![Cypress Tests](https://github.com/dgerike/more-cars-e2e-tests/actions/workflows/main.yml/badge.svg?branch=main)](https://github.com/dgerike/more-cars-e2e-tests/actions/workflows/main.yml)

This repo contains the end2end tests for [More Cars](https://more-cars.net). 
They are written as [Gherkin](https://cucumber.io/docs/gherkin/reference/) scenarios 
and executed in [Cypress](https://www.cypress.io/).

This project is meant for educational purposes.
Use it to get an idea how Gherkin scenarios work, 
how they are hooked up with Cypress, 
and how they can be run in GitHub as a (parallelized) CI job.  

## Installation
1. Install Node.js: https://nodejs.org/en/
1. Clone the repo: https://github.com/dgerike/more-cars-e2e-tests 
1. Open the console
1. Navigate to the path of the cloned repo
1. Run `npm install`
1. Run `npx cypress verify` to check if Cypress has been installed correctly

## Running tests
Cypress can be started in two modes: `open` mode and `run` mode. 
The first one opens a GUI and is used when developing the tests.
The other mode is for executing the test suite.

### Running tests in the GUI
1. Navigate to the path of the cloned repo
1. Run `npx cypress open`
1. A window should open which shows a list of all available tests
1. Click on a test to run it
1. Select "Run [n] integration specs" to run the whole test suite
1. Use the search field to filter tests
1. Click on "Electron [n]" to switch the browser that should be used for testing

### Running tests on the command line
1. Navigate to the path of the cloned repo
1. Run `npm test` or `npx cypress run`
1. The whole test suite should be executed in headless mode (meaning, without the browser popping up)
1. At the end a table with the test results should be shown
1. Use the parameter `spec` to only run a subset of tests, e.g. `npx cypress run --spec "cypress/integration/Search/*"` to only run all search-related tests
1. See https://docs.cypress.io/guides/guides/command-line#cypress-run for more options

## Test Synchronization

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
