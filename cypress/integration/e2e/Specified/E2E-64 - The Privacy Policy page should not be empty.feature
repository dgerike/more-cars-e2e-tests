@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

# @AC_MCD_845
  Rule: The "Privacy Policy" page should be accessible from each page

  @TEST_E2E_64
    Scenario: E2E-64 » The "Privacy Policy" page should not be empty »
      Given the user is on the Contact Page
      Then there should be a section "Privacy Policy"
      And the section "Privacy Policy" should not be empty
