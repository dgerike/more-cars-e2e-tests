@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

# @AC_MCD_NONE
  Rule: NONE

  @TEST_E2E_25 @Search
    Scenario: E2E-25 » The user searches for a specific racing game by name »
      Given the user is on the Racing Game overview page
      When the user searches for racing games with the name "Assetto Corsa Competizione"
      Then the Racing Game overview page should contain "Assetto Corsa Competizione"
