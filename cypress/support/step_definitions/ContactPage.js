Given('the user is on the Contact Page', () => {
    cy.visit('/contact')

    cy.contains('Datenschutzerklärung')
        .should('be.visible')
})
