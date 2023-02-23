@REQ_MCD_TODO
Feature: TODO
  As a ...
  I want to ...
  So i can ...

# @AC_MCD_809
  Rule: Tweeting the homepage should result in a valid Twitter Card

  @TEST_E2E_54 @Homepage @SocialMedia
    Scenario: E2E-54 » Tweeting the homepage should result in a valid Twitter Card »
      Given the user is on the Homepage
      When the user references the current page in a tweet
      Then the tweet should have a twitter card containing a title
      Then the tweet should have a twitter card containing a description
      Then the tweet should have a twitter card not containing an image
      Then the tweet should have a twitter card containing the twitter handle
