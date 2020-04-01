Feature: Sample Feature

  Scenario Outline: Sample Scenario
    Given I launch browser
      |link                               |
      |https://www.toyotanation.com/forums|
    And I click on Login button
    And I enter "<username>" and "<password>"
    When I click Login button
    Then I see Home page
    Examples:
      | username | password     |
      | QATest1  | Qa123456789! |
      | QATest2  | Qa123456789! |