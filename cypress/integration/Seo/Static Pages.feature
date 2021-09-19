Feature: SEO

  Scenario: The Homepage should be crawlable and indexable
    Given the user is on the Homepage
    Then the robots setting should be "INDEX,FOLLOW"

  Scenario: The Contact Page should be crawlable, but not indexable
    Given the user is on the Contact Page
    Then the robots setting should be "NOINDEX,FOLLOW"
