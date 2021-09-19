Feature: Global Search
  Scenario: The user searches for a non-existing term
    Given the user is on the Racing Game overview page
    When the user executes a global search with the term "dshjfkshd kjsd"
    Then the search result page should be displayed
    Then the search result page should be empty
