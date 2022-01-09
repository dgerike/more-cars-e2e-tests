@REQ_MCD_
Feature:

  @TEST_E2E_28 @SEO
  Scenario Outline: E2E-28 » Detail Pages with a low Quality Index should not be indexable »
    Given the user is on the page with the ID "<id>"
    Then the robots setting should be "NOINDEX,FOLLOW"

    Examples:
      | id     |
      | 323044 |
      | 312    |
