@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

@AC_MCD_728
  Rule: The Unit Converter should always be visible on the homepage

  @TEST_E2E_44
    Scenario: E2E-44 » Test The Unit Converter should always be visible on the homepage »
      Given the user is on the Homepage
      Then the unit converter widget should be shown

  #Given the user is logged in
  #And the user is on the Homepage
  #Then the unit converter widget should be shown
