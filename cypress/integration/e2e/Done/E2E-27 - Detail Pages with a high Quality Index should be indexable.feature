@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

# @AC_MCD_NONE
  Rule: NONE

  @TEST_E2E_27 @SEO
    Scenario Outline: E2E-27 » Detail Pages with a high Quality Index should be indexable »
      Given the user is on the page with the ID "<id>"
      Then the robots setting should be "INDEX,FOLLOW"

      Examples:
        | id   |
        | 8394 |
        | 310  |
