@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

# @AC_MCD_781
  Rule: When the connected car has no image then the default image should be shown on the lap time PDP

  @TEST_E2E_53
    Scenario: E2E-53 » When the connected car has no image then the default image should be shown on the lap time card (resp. node) »
      Given the user is on the node with the ID 426507
      Then the image preview list should be empty
      And the gallery image should be the default image

      Given the user is on the "Lap Time" overview page
      When the user filters for the property "ID" with the value 426507
      And the search result card should display the default image
