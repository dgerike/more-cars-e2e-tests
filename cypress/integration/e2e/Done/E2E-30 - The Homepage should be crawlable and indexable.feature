@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

@AC_MCD_NONE
  Rule: NONE

  @TEST_E2E_30
    Scenario: E2E-30 » The Homepage should be crawlable and indexable »
      Given the user is on the Homepage
      Then the robots setting should be "INDEX,FOLLOW"
