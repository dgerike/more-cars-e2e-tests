@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

@AC_MCD_730
  Rule: The Unit Converter should warn the user when trying to convert invalid unit combinations

  @TEST_E2E_42
    Scenario: E2E-42 » Invalid units should result in an error message »
      Given the user is on the Homepage
      When the user wants to convert 250.0 "kmh" to "PS"
      Then the unit converter should display "incompatible unit" in the result field
