Then('the user is on a car model page', () => {
    cy.visit('/f40-f120-ferrari__25')

    cy.contains('F40 (F120)')
        .should('be.visible')

    cy.wrap({'name': 'F40'})
        .as('currentCarModel')
})

Then('a timeline for this car model should be displayed', () => {
    cy.get('h2')
        .contains('Timeline')
        .should('be.visible')
})

Then('a list of car model variants for this car model should be displayed', () => {
    cy.get('h2')
        .contains('Car Model Variants')
        .should('be.visible')
})

Then('a description for this car model should be displayed', () => {
    cy.get('@currentCarModel')
        .then(carModel => {
            cy.get('h1')
                .contains(carModel.name)
                .should('be.visible')
        })
})

Then('a fact sheet for this car model should be displayed', () => {
    cy.get('h2')
        .contains('Fact Sheet')
        .should('be.visible')
})
