Feature: Sample Feature

  Scenario: Sample Scenario
    Given I launch https://www.toyotanation.com/forums
    And I click on Login button
    And I enter username
    And I enter password
    When I click Login button
    Then I see Home page