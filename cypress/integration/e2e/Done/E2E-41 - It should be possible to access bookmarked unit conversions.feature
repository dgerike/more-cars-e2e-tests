@REQ_MCD_733
Feature: It should be possible to bookmark unit conversions

  @TEST_E2E_41
  Scenario: E2E-41 » It should be possible to access bookmarked unit conversions »
    When the user visits the URL "/?from_unit=mph&from_value=155&to_unit=kmh"
    Then the unit converter should display "249.45" in the result field
