Feature: User sign up and registration
  As a user
  I want to become a member and add value to the community SEO viral referral marketing

  Scenario: A user signs up with valid information
    Given I am on the sign up page
    When I sign up as a user with email "test@example.com"
    Then I should have an account

  Scenario: A user logs in with valid information
    Given I am on the login page
    And I have already registered as "test@example.com"
    When I login with correct email address "test@example.com"
    Then I should see "Welcome back"
