@REQ_MCD_261
Feature: Use new search engine on all "Index" pages

  @TEST_E2E_22 @Search
  Scenario: E2E-22 » The user searches for all racing games of a specific year »
    Given the user is on the Racing Game overview page
    When the user searches for racing games that were released in 2018
    Then the Racing Game overview page should contain "Forza Horizon 4"
