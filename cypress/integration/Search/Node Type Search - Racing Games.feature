Feature: Node Type Search
  Scenario: The user searches for all racing games of a specific year
    Given the user is on the Racing Game overview page
    When the user searches for racing games that were released in 2018
    Then the Racing Game overview page should contain "Forza Horizon 4"

  Scenario: The user searches for all racing games since a specific year
    Given the user is on the Racing Game overview page
    When the user searches for racing games that were released after 2018
    Then the Racing Game overview page should contain "F1 2019"
    Then the Racing Game overview page should not contain "F1 2018"
    Then the Racing Game overview page should not contain "Forza Horizon 4"

  Scenario: The user searches for all racing games before time
    Given the user is on the Racing Game overview page
    When the user searches for racing games that were released before 1900
    Then the Racing Game overview page should have no results
