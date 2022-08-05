@REQ_MCD_677
Feature: Pagination for the relationship items in the editor

  @TEST_E2E_14 @Auth
  Scenario: E2E-14 » Guest users should not be able to access the editor via "Create" »
    Given the user is on the Homepage
    When the user tries to "Create" a new node
    Then the user should be redirected to the Login Page
