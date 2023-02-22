@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

# @AC_MCD_845
  Rule: The "Privacy Policy" page should be accessible from each page

  @TEST_E2E_63
    Scenario: E2E-63 » The "Privacy Policy" page should be accessible from each page »
      Given the user is on the Homepage
      When the user selects the "Contact" element in the global navigation
      Then the user should be redirected to the "Privacy Policy" page
