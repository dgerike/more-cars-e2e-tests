@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

@AC_MCD_846
  Rule: The "Terms of Use" page should be accessible from each page

  @TEST_E2E_32 @Legal
    Scenario: E2E-32 » The "Terms of Use" page should be accessible from each page »
      Given the user is on the Homepage
      When the user selects the "Contact" element in the global navigation
      Then the user should be redirected to the "Terms of Use" page
