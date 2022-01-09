@REQ_MCD_
Feature:

  @TEST_E2E_25 @Search
  Scenario: E2E-25 » The user searches for a specific racing game by name »
    Given the user is on the Racing Game overview page
    When the user searches for racing games with the name "Assetto Corsa Competizione"
    Then the Racing Game overview page should contain "Assetto Corsa Competizione"
