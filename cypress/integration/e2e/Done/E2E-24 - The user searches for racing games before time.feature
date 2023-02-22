@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

@AC_MCD_NONE
  Rule: NONE

  @TEST_E2E_24 @Search
    Scenario: E2E-24 » The user searches for racing games before time »
      Given the user is on the Racing Game overview page
      When the user searches for racing games that were released before 1900
      Then the Racing Game overview page should have no results
