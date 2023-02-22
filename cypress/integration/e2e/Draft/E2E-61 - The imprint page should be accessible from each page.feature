@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

@AC_MCD_844
  Rule: The imprint page should be accessible from each page

  @TEST_E2E_61
    Scenario: E2E-61 » The imprint page should be accessible from each page »
      Given the user is on the Homepage
      When the user selects the "Contact" element in the global navigation
      Then the user should be redirected to the "Imprint" page
