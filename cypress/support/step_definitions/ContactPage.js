Given('the user is on the Contact Page', () => {
    cy.visit('/contact')

    cy.contains('Datenschutzerkl√§rung')
        .should('be.visible')
})
