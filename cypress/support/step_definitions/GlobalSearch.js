When('the user executes a global search with the term {string}', (searchTerm) => {
    cy.get('input[name="q"]')
        .type(searchTerm)
        .closest('form')
        .submit()
})

Then('the search result page should be displayed', () => {
    cy.contains('Rules & Limitations')
        .should('be.visible')
})

Then('the search result should return matches for the node type {string}', (nodeType) => {
    // checking the result counter (in the statistics container)
    cy.contains('Statistics')
        .parent()
        .find('a')
        .contains(nodeType)
        .within(item => {
            cy.wrap(item)
                .find('span')
                .then(counter => {
                    expect(parseInt(counter.text())).to.be.greaterThan(0)
                })
        })

    // checking the actual search results
    cy.get('h2')
        .contains(nodeType)
        .find(' + .canvas .card-node')
        .should('be.visible')
        .should('have.length.at.least', 1)
})

Then('the search result should not return matches for the node type {string}', (nodeType) => {
    cy.contains('Statistics')
        .parent()
        .find('a')
        .contains(nodeType)
        .should('not.exist')
})
