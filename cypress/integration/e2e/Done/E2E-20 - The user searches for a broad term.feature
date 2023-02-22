@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

@AC_MCD_NONE
  Rule: NONE

  @TEST_E2E_20 @Search
    Scenario: E2E-20 » The user searches for a broad term »
      Given the user is on the Homepage
      When the user executes a global search with the term "Ferrari"
      Then the search result page should be displayed
      And the search result should return matches for the node type "Car Model"
      And the search result should return matches for the node type "Car Model Variant"
      And the search result should return matches for the node type "Brand"
      And the search result should return matches for the node type "Images"
      And the search result should not return matches for the node type "Gaming Platform"
      And the search result should not return matches for the node type "Country"
