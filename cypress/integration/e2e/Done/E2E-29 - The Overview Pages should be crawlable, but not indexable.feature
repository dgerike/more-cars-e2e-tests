@REQ_MCD_
Feature:

  @TEST_E2E_29
  Scenario Outline: E2E-29 » The Overview Pages should be crawlable, but not indexable »
    Given the user is on the "<page>" overview page
    Then the robots setting should be "NOINDEX,FOLLOW"

    Examples:
      | page              |
      | carmodel          |
      | carmodelvariation |
      | racinggame        |
