@REQ_MCD_
Feature:

  @TEST_E2E_17 @Auth
  Scenario: E2E-17 » Guest users should not be able to access the garage »
    Given the user is on the Homepage
    When the user tries to go the "Garage"
    Then the user should be redirected to the Login Page
