Given('the user is on the Homepage', () => {
    cy.visit('/')

    cy.contains('Car of the Moment')
        .should('be.visible')
})

Then('there should be a section {string}', (section) => {
    cy.contains(section)
        .should('be.visible')
})
