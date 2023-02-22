@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

# @AC_MCD_NONE
  Rule: NONE

  @TEST_E2E_26
    Scenario: E2E-26 » The user searches for a racing game that does not exist »
      Given the user is on the Racing Game overview page
      When the user searches for racing games with the name "Holy Moly Super Fast Racing Simulator Deluxe"
      Then the Racing Game overview page should have no results
