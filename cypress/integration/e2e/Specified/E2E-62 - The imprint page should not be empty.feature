@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

@AC_MCD_844
  Rule: The imprint page should be accessible from each page

  @TEST_E2E_62
    Scenario: E2E-62 » The imprint page should not be empty »
      Given the user is on the Contact Page
      Then there should be a section "Imprint"
      And the section "Imprint" should not be empty
