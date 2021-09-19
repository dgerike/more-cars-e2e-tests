Feature: SEO

  Scenario Outline: Detail Pages with a high Quality Index should be indexable
    Given the user is on the page with the ID "<id>"
    Then the robots setting should be "INDEX,FOLLOW"

    Examples:
      | id   |
      | 8394 |
      | 310  |

  Scenario Outline: Detail Pages with a low Quality Index should not be indexable
    Given the user is on the page with the ID "<id>"
    Then the robots setting should be "NOINDEX,FOLLOW"

    Examples:
      | id     |
      | 323044 |
      | 312    |
