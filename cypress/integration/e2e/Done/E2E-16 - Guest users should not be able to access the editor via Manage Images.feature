@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

# @AC_MCD_NONE
  Rule: NONE

  @TEST_E2E_16 @Auth
    Scenario: E2E-16 » Guest users should not be able to access the editor via "Manage Images" »
      Given the user is on a car model variation page
      When the user tries to "Manage Images"
      Then the user should be redirected to the Login Page
