@REQ_MCD_732
Feature: The Unit Converter should allow converting zero and negative values

  @TEST_E2E_45
  Scenario Outline: E2E-45 » The Unit Converter should allow converting zero and negative values »
    Given the user is on the Homepage

    When the user wants to convert <from_value> "<from_unit>" to "<target_unit>"
    Then the unit converter should display "<expected_result>" in the result field

    Examples:
      | from_unit | from_value | target_unit | expected_result |
      | kmh       | -250.0     | mph         | -155.34         |
      | PS        | 0.0        | kW          | 0.00            |
