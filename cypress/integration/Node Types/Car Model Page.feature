Feature: Car Model Page
  Scenario: Core information and relations about a car model should be displayed
    Given the user is on a car model page
    Then a timeline for this car model should be displayed
    Then a list of car model variants for this car model should be displayed
    Then a description for this car model should be displayed
    Then a fact sheet for this car model should be displayed
