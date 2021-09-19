Given('there should be a More Cars logo', () => {
    cy.get('h3.mc-logo')
        .contains('More Cars')
        .contains('Open Car Database')
})

Given('the user is on the {string} overview page', (nodeType) => {
    cy.visit('/' + nodeType)
})

Given('the user is on the page with the ID {string}', (id) => {
    cy.visit('/' + id)
})
