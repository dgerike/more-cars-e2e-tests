@REQ_MCD_
Feature:

  @TEST_E2E_19
  Scenario: E2E-19 » Core information and relations about a car model variation should be displayed »
    Given the user is on a car model variation page
    Then an image gallery for this car model variation should be displayed
    And a list of videos for this car model variation should be displayed
    And a description for this car model variation should be displayed
    And a fact sheet for this car model variation should be displayed
