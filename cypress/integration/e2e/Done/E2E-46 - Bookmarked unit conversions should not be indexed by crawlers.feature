@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

@AC_MCD_734
  Rule: Bookmarked unit conversions should not be indexed by crawlers

  @TEST_E2E_46
    Scenario: E2E-46 » Bookmarked unit conversions should not be indexed by crawlers »
      When the user visits the URL "/?from_unit=mph&from_value=155&to_unit=kmh"
      Then the robots setting should be "NOINDEX,FOLLOW"
