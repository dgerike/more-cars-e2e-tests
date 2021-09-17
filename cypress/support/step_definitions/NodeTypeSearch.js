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
