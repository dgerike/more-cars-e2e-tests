@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

# @AC_MCD_827
  Rule: Every HTTP request should be redirected to HTTPS

  @TEST_E2E_57
    Scenario: E2E-57 » Every HTTP request should be redirected to HTTPS »
      Given the user goes to the URL "http://more-cars.net"
      Then the user should be redirected to the URL "https://more-cars.net"
