@REQ_MCD_216
Feature: Add "PS Converter" widget to homepage

  @TEST_E2E_4
  Scenario: E2E-4 » Guest users should not be able to access the garage »
    Given the user is on the Homepage
    When the user tries to go the "Garage"
    Then the user should be redirected to the Login Page
