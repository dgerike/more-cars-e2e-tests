@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

# @AC_MCD_677
  Rule: Pagination for the relationship items in the editor

  @TEST_E2E_5
    Scenario: E2E-5 » The list of relationship items in the editor should be paginated »
      Given the User is on the detail page of the racing series "Formula 1"
      When the User switches to the editor
      And the User opens the relationships section in the editor
      Then the section "Racing Series Events" should contain 24 items
      Then the section "Racing Series Events" should be paginated
