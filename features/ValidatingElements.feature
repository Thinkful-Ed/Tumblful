Feature: Validating that the page layout appears correctly.
  
  Scenario: As a user, I should see all of the elements we expect when I'm not logged in.
    Given a valid user
    And that I visit the login page
    Then I will see the element ".tumblful-header"
    And I will see the text "New to Tumblful? Sign up"
    And I will see the element "#sign_up_form #user_name"
    And I will see the element "#sign_up_form #user_username"
    And I will see the element "#sign_up_form #user_email"
    And I will see the element "#sign_up_form #user_password"
    And I will see the element "#sign_up_form input[type='submit']"
    And I will see the element "#sign_in_form #user_email"
    And I will see the element "#sign_in_form #user_password"
    And I will see the element "#sign_in_form input[type='submit']"
    And I will see the element "#user_remember_me"
    And I will see the text "Remember me"
    And I will see the text "Forgot password?"
    And I will see the text "Thank you for using tumblful. ♥"

  Scenario: As a valid and logged in user, I should see all of the elements we expect when I'm logged in.
    Given a valid user
    And that I visit the login page
    And that I am logged in as a valid user
    Then I will see the element ".tumblful-header"
    And I will see the text "Signed in successfully."
    And I will see the text "Welcome Back to Tumblful!"
    And I will see the text "Tumblful accounts in alpabetical order."
    And I will see the element "#wrapper div.main-content ol"
    And I will see the text "Home"
    And I will see the text "All Image Links"
    And I will see the text "All Text Posts"
    And I will see the text "All Article Links"
    And I will see the text "Sign Out"
    And I will see the text "Thank you for using tumblful. ♥"
