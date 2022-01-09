@REQ_MCD_
Feature:

  @TEST_E2E_30
  Scenario: E2E-30 » The Homepage should be crawlable and indexable »
    Given the user is on the Homepage
    Then the robots setting should be "INDEX,FOLLOW"
