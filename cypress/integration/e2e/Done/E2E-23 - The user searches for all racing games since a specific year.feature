@REQ_MCD_261
Feature: Use new search engine on all "Index" pages

  @TEST_E2E_23 @Search
  Scenario: E2E-23 » The user searches for all racing games since a specific year »
    Given the user is on the Racing Game overview page
    When the user searches for racing games that were released after 2018
    Then the Racing Game overview page should contain "F1 2019"
    Then the Racing Game overview page should not contain "F1 2018"
    Then the Racing Game overview page should not contain "Forza Horizon 4"
