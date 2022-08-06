@REQ_MCD_731
Feature: The Unit Converter should allow converting to the SAME unit

  @TEST_E2E_43
  Scenario Outline: E2E-43 » Using the same IN and OUT unit should be allowed »
    Given the user is on the Homepage

    When the user wants to convert <from_value> "<from_unit>" to "<target_unit>"
    Then the unit converter should display "<expected_result>" in the result field

    Examples:
      | from_unit | from_value | target_unit | expected_result |
      | kmh       | 250.0      | kmh         | 250.00          |
      | kW        | 136.0      | kW          | 136.00          |
      | Nm        | 999.9      | Nm          | 999.90          |
