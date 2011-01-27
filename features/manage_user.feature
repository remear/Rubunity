Feature: User creation and login
  In order to use the app
  As a user
  I want to create an account and login

  Scenario: Signup
    Given I am not logged in
    And I follow "Signup"
    And I fill in "first_name" with "Evan"
    And I fill in "last_name" with "Sparkman"
    And I fill in "email" with "esparkman@esdezines.com"
    And I fill in "password" with "123456"
    And I fill in "password_confirmation" with "123456"
    And I press "Submit"
    Then I should see "Welcome!"

  Scenario: Login
    Given I am not logged in
    And I have a user named "Evan Sparkman"
    And I follow "Login"
    And I fill in "email" with "esparkman@esdezines.com"
    And I fill in "password" with "123456"
    And I press "Login"
    Then I should see page debug
    Then I should see "Hello!"
