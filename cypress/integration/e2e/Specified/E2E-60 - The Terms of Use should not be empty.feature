@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

@AC_MCD_940
  Rule: The "Terms of Use" should not be empty

  @TEST_E2E_60
    Scenario: E2E-60 » The "Terms of Use" should not be empty »
      Given the user is on the Contact Page
      Then there should be a section "Terms of Use"
      And the section "Terms of Use" should not be empty
