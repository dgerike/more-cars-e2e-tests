Feature: Editor
  Scenario: Guest users should not be able to access the editor
    Given the user is on the homepage
    When the user tries to "Create" a new node
    Then the user should be redirected to the Login Page
