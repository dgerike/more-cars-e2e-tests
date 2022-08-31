const { Given, When, Then } = require("@badeball/cypress-cucumber-preprocessor");

Then('the unit converter widget should be shown', () => {
    cy.contains('Convert from')
        .should('be.visible')

    cy.contains('Convert to')
        .should('be.visible')

    cy.get('input[type="submit"]')
        .contains('Convert now')
        .should('be.visible')
})

When('the user wants to convert {float} {string} to {string}', (fromValue, fromUnit, toUnit) => {
    cy.get('select[name="from_unit"]')
        .select(fromUnit)

    cy.get('input[name="from_value"]')
        .clear()
        .type(fromValue)

    cy.get('select[name="to_unit"]')
        .select(toUnit)

    cy.get('input[type="submit"]')
        .contains('Convert now')
        .click()
})

Then('the unit converter should display {string} in the result field', (expectedResult) => {
    cy.get('input[name="result"]')
        .should('have.value', expectedResult)
})

