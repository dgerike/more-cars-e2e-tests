@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

# @AC_MCD_NONE
  Rule: NONE

  @TEST_E2E_15 @Auth
    Scenario: E2E-15 » Guest users should not be able to access the editor via "Edit" »
      Given the user is on a car model variation page
      When the user tries to "Edit" a relationship
      Then the user should be redirected to the Error Page
