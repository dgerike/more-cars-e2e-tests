@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

@AC_MCD_770
  Rule: All node types should have sensible default sorting parameters

  @TEST_E2E_49
    Scenario: E2E-49 » All node types should have sensible default sorting parameters »
      Given the user is on a "Car Magazine" page
      Then all "Car Magazine Issues" should be sorted by "release_date" "descending"

      Given the user is on a "Racing Event" page
      Then all "Racing Event Sessions" should be sorted by "date" "ascending"
