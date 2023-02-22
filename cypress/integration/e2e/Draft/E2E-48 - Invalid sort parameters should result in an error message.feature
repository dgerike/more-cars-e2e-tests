@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

@AC_MCD_769
  Rule: Invalid sort parameters should result in an error message

  @TEST_E2E_48
    Scenario Outline: E2E-48 » Invalid sort parameters should result in an error message »
      Given the user is on the "Car Model" overview page
      When the user sorts the overview page by "name" <direction>
      Then an error message regarding "sort direction" should be shown

      Examples:
        | direction  |
        | descending |
        | asc_desc   |
        | asc desc   |
        | !asc       |
