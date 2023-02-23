@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

# @AC_MCD_810
  Rule: Tweeting a car model variant should result in a valid Twitter Card

  @TEST_E2E_56 @SocialMedia
    Scenario: E2E-56 » Tweeting a car model variant without images should result in a valid Twitter Card »
      Given the user is on a car model variation page withan empty image gallery
      When the user references the current page in a tweet
      Then the tweet should have a twitter card containing a title
      Then the tweet should have a twitter card containing a description
      Then the tweet should have a twitter card not containing an image
      Then the tweet should have a twitter card containing the twitter handle
