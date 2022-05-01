@REQ_MCD_
Feature:

  @TEST_E2E_32 @Legal
  Scenario: E2E-32 » The Contact Page should contain the imprint, the privacy information and the terms of use »
    Given the user is on the Contact Page
    Then there should be a More Cars logo
    Then there should be a section "Impressum"
    Then there should be a section "Datenschutzerklärung"
    Then there should be a section "Terms of Use"
