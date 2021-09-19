Given('there should be a More Cars logo', () => {
    cy.get('h3.mc-logo')
        .contains('More Cars')
        .contains('Open Car Database')
})
