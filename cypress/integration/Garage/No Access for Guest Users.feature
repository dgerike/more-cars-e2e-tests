Feature: Garage
  Scenario: Guest users should not be able to access the garage
    Given the user is on the Homepage
    When the user tries to go the "Garage"
    Then the user should be redirected to the Login Page
