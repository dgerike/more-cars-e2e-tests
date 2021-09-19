Feature: Global Search
  Scenario: The user searches for a broad term
    Given the user is on the Homepage
    When the user executes a global search with the term "Ferrari"
    Then the search result page should be displayed
    And the search result should return matches for the node type "Car Model"
    And the search result should return matches for the node type "Car Model Variant"
    And the search result should return matches for the node type "Brand"
    And the search result should return matches for the node type "Images"
    And the search result should not return matches for the node type "Gaming Platform"
    And the search result should not return matches for the node type "Country"
