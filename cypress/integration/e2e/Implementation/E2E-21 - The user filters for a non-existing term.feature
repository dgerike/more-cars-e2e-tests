@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

@AC_MCD_921
  Rule: The user should be able to filter by any property that belongs to the node type

  @TEST_E2E_21 @Search
    Scenario: E2E-21 » The user filters for a non-existing term »
      Given the user is on the Racing Game overview page
      When the user filters for the term name "dshjfkshd kjsd"
      Then the search result page should be displayed
      Then the search result page should be empty
