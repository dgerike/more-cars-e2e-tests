@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

@AC_MCD_810
  Rule: Tweeting a car model variant should result in a valid Twitter Card

  @TEST_E2E_55 @SocialMedia
    Scenario: E2E-55 » Tweeting a car model variant should result in a valid Twitter Card »
      Given the user is on a car model variation page
      When the user references the current page in a tweet
      Then the tweet should have a twitter card containing a title
      Then the tweet should have a twitter card containing a description
      Then the tweet should have a twitter card containing an image
      Then the tweet should have a twitter card containing the twitter handle
