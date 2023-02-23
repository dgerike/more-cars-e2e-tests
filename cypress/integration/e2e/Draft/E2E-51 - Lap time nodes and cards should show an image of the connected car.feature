@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

# @AC_MCD_779
  Rule: Lap time cards should show an image of the connected car

  @TEST_E2E_51
    Scenario: E2E-51 » Lap time nodes and cards should show an image of the connected car »
      Given the user is on the node with the ID 426419
      Then the image preview list should be empty
      But the gallery image should be displayed
      And the gallery image should not be the default image

      Given the user is on the "Lap Time" overview page
      When the user filters for the property "ID" with the value 426419
      Then the search result card should display an image
      And the search result card should not display the default image
