Feature: Verifying that sign in/sign out works as intended.
  
  Scenario: If a user attempts to sign in without entering email or password, I should see an error warning.
    Given that I visit the login page
    When I click "Sign in"
    Then I will see the text "Invalid Email or password."
    
  Scenario: If a user attempts to sign in after entering an invalid email and password, I should see an error message.
    Given that I visit the login page
    And I enter a bad user email and password
    Then I will see the text "Invalid Email or password."
    
  Scenario: If a user attempts to sign up without entering anything into the fields, I should be told that I have to enter text.
    Given that I visit the login page
    When I click "Sign up for Tumblful"
    Then I will see the text "can't be blank"
    And I will see the element "#user_name"
    And I will see the element "#user_username"
    And I will see the element "#user_email"
    And I will see the element "#user_password"

  Scenario: If a user attempts to sign up while entering a password which is too short, then I should see the error message.
    Given that I visit the login page
    When I sign up using too short of a password
    Then I will see the text "is too short (minimum is 8 characters)"

  Scenario: As a user, I should be able to register using the sign in form.
    Given that I visit the login page
    When I sign up as a user
    And I will see the text "Welcome! You have signed up successfully."
    