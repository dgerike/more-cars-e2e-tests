@REQ_MCD_
Feature:

  @TEST_E2E_31 @SEO
  Scenario: E2E-31 » The Contact Page should be crawlable, but not indexable »
    Given the user is on the Contact Page
    Then the robots setting should be "NOINDEX,FOLLOW"
