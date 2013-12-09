Feature: Calculator
  As a novice web developer
  I want to mess around with Cucumber
  And add some numbers

  Scenario: Add two numbers together
    Given I have a calculator
    And I have the number 5
    And I have the number 7
    When I add them together
    Then I should see 12 on the terminal

