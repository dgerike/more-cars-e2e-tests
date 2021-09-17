Given('the user is on a car model variation page', () => {
    cy.visit('/ferrari-f40-f120ab__1211')

    cy.contains('Ferrari F40 (F120AB)')
        .should('be.visible')

    cy.wrap({'name': 'Ferrari F40'})
        .as('currentCarModelVariation')
})

Then('an image gallery for this car model variation should be displayed', () => {
    cy.get('.summary-box-images a img')
        .should('be.visible')
        .should('have.length.at.least', 1)
})

Then('a list of videos for this car model variation should be displayed', () => {
    cy.get('h2')
        .contains('Videos')
        .should('be.visible')
})

Then('a description for this car model variation should be displayed', () => {
    cy.get('@currentCarModelVariation')
        .then(carModel => {
            cy.get('h1')
                .contains(carModel.name)
                .should('be.visible')
        })
})

Then('a fact sheet for this car model variation should be displayed', () => {
    cy.get('h2')
        .contains('Fact Sheet')
        .should('be.visible')
})
