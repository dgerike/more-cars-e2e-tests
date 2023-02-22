@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

# @AC_MCD_828
  Rule: Every WWW request should be redirected to non-WWW

  @TEST_E2E_58
    Scenario: E2E-58 » Every WWW request should be redirected to non-WWW »
      Given the user goes to the URL "https://www.more-cars.net"
      Then the user should be redirected to the URL "https://more-cars.net"
