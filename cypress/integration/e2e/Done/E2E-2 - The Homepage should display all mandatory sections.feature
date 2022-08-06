@REQ_MCD_354
Feature: Update Homepage Content and Structure

  @TEST_E2E_2 @Homepage
  Scenario: E2E-2 » The Homepage should display all mandatory sections »
    Given the user is on the Homepage
    Then there should be a More Cars logo
    Then there should be a section "What is More Cars"
    Then there should be a section "Car of the Moment"
    Then there should be a section "Number of the day"
    Then there should be a section "Database Statistics"
    Then there should be a section "Unit Converter"
    Then there should be a section "Latest User Contributions"
    Then there should be a section "Social Media"
