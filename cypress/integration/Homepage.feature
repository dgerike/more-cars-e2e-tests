Feature: Homepage
  Scenario: The homepage should display all mandatory sections
    Given the user is on the homepage
    Then there should be a section "What is More Cars"
    Then there should be a section "Car of the Moment"
    Then there should be a section "Number of the day"
