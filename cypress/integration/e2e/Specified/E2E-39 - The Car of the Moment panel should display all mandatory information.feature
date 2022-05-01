@REQ_MCD_276
Feature: Cache random car for 1 hour

  @TEST_E2E_39 @CarOfTheMoment @Homepage
  Scenario: E2E-39 » The "Car of the Moment" panel should display all mandatory information »
    Given the user is on the Homepage
    Then the »Car of the Moment« panel should display the name of the car
    And the »Car of the Moment« panel should display a non-error image
    And the »Car of the Moment« panel should display the build years of the car
    And the »Car of the Moment« panel should display the max. power of the car
    And the »Car of the Moment« panel should display the top speed of the car
