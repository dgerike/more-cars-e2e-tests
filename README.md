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
