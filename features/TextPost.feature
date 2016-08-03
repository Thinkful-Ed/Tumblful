Feature: Text Posts

  Scenario: As a user, I shouldn't be able to visit the Text Posts page without logging in.
    Given that I visit the login page
    When I click "All Text Posts"
    Then I will see the text "You need to sign in or sign up before continuing."
    
  Scenario: As a valid and logged in user, I should be able to visit the Text Posts page
    Given a valid user
    And that I visit the login page
    And that I am logged in as a valid user
    When I click "All Text Posts"
    Then I will see the text "Create a New Text Post"
    
  Scenario: As a user, I should be able to create and delete a Text Post
    Given a valid user
    And that I visit the login page
    And that I am logged in as a valid user
    When I click "All Text Posts"
    Then I will see the text "Create a New Text Post"
    When I click "Create a New Text Post"
    Then I will see the text "Creating a New Text Post"
    And I will see the element "#text_post_content"
    And I will see the element "#text_post_title"
    When I fill in "text_post_content" with the text "Hello there!"
    And I fill in "text_post_title" with the text "A Polite Greeting"
    And I click "Create Text post"
    Then I will see the text "Your Text Post has been saved."
    And I will see the text "A Polite Greeting"
    And I will see the text "Hello there!"
    And I will see the element ".edit-button"
    And I will see the element ".like-button"
    And I will see the element ".delete-button"
    When I click "pageview"
    Then I will see the text "A Polite Greeting"
    And I will see the text "Hello there!"
    And I will see the text "edit"
    And I will see the text "arrow_back"
    When I click "edit"
    Then I will see the text "Editing the Post: A Polite Greeting"
    And I will see the element "#text_post_content"
    And I will see the element "#text_post_title"
    And I fill in "text_post_title" with the text "A Polite Greeting - Edited by Test"
    And I click "save"
    And I will see the text "Your Text Post has been saved."
    And I will see the text "A Polite Greeting - Edited by Test"
    When I click "delete"
    Then I will see the text "Your Text Post has been deleted"
    And I will not see the text "A Polite Greeting"
