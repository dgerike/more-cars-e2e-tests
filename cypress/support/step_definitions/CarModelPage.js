const { Given, When, Then } = require("@badeball/cypress-cucumber-preprocessor");

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

    cy.get('h2')
        .contains('Timeline')
        .find('+ div')
        .contains('Car Model')
        .should('be.visible')
})

Then('a list of car model variants for this car model should be displayed', () => {
    cy.get('h2')
        .contains('Car Model Variants')
        .should('be.visible')

    cy.get('h2')
        .contains('Car Model Variants')
        .find('+ div .card-node')
        .should('be.visible')
        .should('have.length.greaterThan', 1)
})

Then('a description for this car model should be displayed', () => {
    cy.get('@currentCarModel')
        .then(carModel => {
            cy.get('h1')
                .contains(carModel.name)
                .should('be.visible')
        })

    cy.get('h1')
        .parent()
        .find('+ p')
        .should('be.visible')
})

Then('a fact sheet for this car model should be displayed', () => {
    cy.get('h2')
        .contains('Fact Sheet')
        .should('be.visible')

    cy.get('h2')
        .contains('Fact Sheet')
        .find('+ div dt, + div dl')
        .should('be.visible')
})

Then('photos for this car model should be displayed', () => {
    cy.get('article img')
        .should('be.visible')

    cy.get('.summary-box-images img')
        .should('be.visible')
})

Then('exactly one brand should be connected to this car model', () => {
    cy.get('h2')
        .contains('Car Brands')
        .should('be.visible')

    cy.get('h2')
        .contains('Car Brands')
        .find('+ div .card-node')
        .should('be.visible')
        .should('have.length', 1)
})