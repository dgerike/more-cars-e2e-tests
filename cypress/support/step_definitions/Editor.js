const { Given, When, Then } = require("@badeball/cypress-cucumber-preprocessor");

When('the user tries to "Create" a new node', () => {
    cy.get('.nav-link')
        .contains('Create')
        .click()
})

Then('the user should be redirected to the Login Page', () => {
    cy.location()
        .should((loc) => {
            expect(loc.pathname).to.eq('/login')
        })

    cy.contains('Log in to your Account')
        .should('be.visible')
})
