const { Given, When, Then } = require("@badeball/cypress-cucumber-preprocessor");

Then('the robots setting should be {string}', (robots) => {
    cy.get('head meta[name="robots"]')
        .then(robotsNode => {
            expect(robotsNode.attr('content').trim()).to.eq(robots)
        })
})
