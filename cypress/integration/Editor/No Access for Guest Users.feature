Feature: Editor
  Scenario: Guest users should not be able to access the editor via "Create"
    Given the user is on the Homepage
    When the user tries to "Create" a new node
    Then the user should be redirected to the Login Page

  Scenario: Guest users should not be able to access the editor via "Edit"
    Given the user is on a car model variation page
    When the user tries to "Edit" a relationship
    Then the user should be redirected to the Error Page

  Scenario: Guest users should not be able to access the editor via "Manage Images"
    Given the user is on a car model variation page
    When the user tries to "Manage Images"
    Then the user should be redirected to the Login Page

