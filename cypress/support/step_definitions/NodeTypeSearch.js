Given('the user is on the Racing Game overview page', () => {
    cy.visit('/racinggame')

    cy.contains('Racing Games')
        .should('be.visible')
})

When('the user searches for racing games that were released in {int}', (year) => {
    cy.get('select[name="property"]')
        .select('release_year')

    cy.get('select[name="operator"]')
        .select('eq')

    cy.get('input[name="value"]')
        .type(year)

    cy.get('.canvas > form')
        .submit()
})

When('the user searches for racing games that were released after {int}', (year) => {
    cy.get('select[name="property"]')
        .select('release_year')

    cy.get('select[name="operator"]')
        .select('gt')

    cy.get('input[name="value"]')
        .type(year)

    cy.get('.canvas > form')
        .submit()
})

When('the user searches for racing games that were released before {int}', (year) => {
    cy.get('select[name="property"]')
        .select('release_year')

    cy.get('select[name="operator"]')
        .select('lt')

    cy.get('input[name="value"]')
        .type(year)

    cy.get('.canvas > form')
        .submit()
})

When('the user searches for racing games with the name {string}', (name) => {
    cy.get('select[name="property"]')
        .select('name')

    cy.get('select[name="operator"]')
        .select('eq')

    cy.get('input[name="value"]')
        .type(name)

    cy.get('.canvas > form')
        .submit()
})

Then('the Racing Game overview page should contain {string}', (gameName) => {
    cy.get('.card-node')
        .contains(gameName)
        .should('exist')
})

Then('the Racing Game overview page should not contain {string}', (gameName) => {
    cy.get('.card-node')
        .contains(gameName)
        .should('not.exist')
})

Then('the Racing Game overview page should have no results', () => {
    cy.get('.alert')
        .contains('results')
        .should('be.visible')

    cy.get('.card-node')
        .should('not.exist')
})
