const { Given, When, Then } = require("@badeball/cypress-cucumber-preprocessor");

When('the user tries to go the "Garage"', () => {
    cy.visit('/garage')
})
