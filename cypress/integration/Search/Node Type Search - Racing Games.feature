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

  Scenario: The user searches for a specific racing game by name
    Given the user is on the Racing Game overview page
    When the user searches for racing games with the name "Assetto Corsa Competizione"
    Then the Racing Game overview page should contain "Assetto Corsa Competizione"

  Scenario: The user searches for a racing game that does not exist
    Given the user is on the Racing Game overview page
    When the user searches for racing games with the name "Holy Moly Super Fast Racing Simulator Deluxe"
    Then the Racing Game overview page should have no results
