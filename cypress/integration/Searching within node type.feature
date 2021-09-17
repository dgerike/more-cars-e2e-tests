Feature: Node Type Search
  Scenario: The user searches for a racing game
    Given the user is on the Racing Game overview page
    Then the Racing Game overview page should not contain "Project CARS 2"
    When the user searches for racing games that were released in 2017
    Then the Racing Game overview page should contain "Project CARS 2"
