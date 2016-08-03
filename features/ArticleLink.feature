Feature: Article Links

  Scenario: As a user, I shouldn't be able to visit the Article Links page without logging in.
    Given that I visit the login page
    When I click "All Article Links"
    Then I will see the text "You need to sign in or sign up before continuing."
    
  Scenario: As a valid and logged in user, I should be able to visit the Article Links page
    Given a valid user
    And that I visit the login page
    And that I am logged in as a valid user
    When I click "All Article Links"
    Then I will see the text "Create a New Article Link"
    
  Scenario: As a user, I should be able to create and delete Article Links
    Given a valid user
    And that I visit the login page
    And that I am logged in as a valid user
    When I click "All Article Links"
    And I click "Create a New Article Link"
    Then I will see the text "Create a New Article Link"
    And I will see the element "#article_link_url"
    And I will see the element "#article_link_title"
    When I fill in "article_link_url" with the text "https://www.google.com/"
    And I fill in "article_link_title" with the text "Google"
    And I click "Create Article link"
    Then I will see the text "Your Article Link has been saved."
    And I will see the text "Google"
    And I will see the text "https://www.google.com/"
    And I will see the element ".edit-button"
    And I will see the element ".like-button"
    And I will see the element ".delete-button"
    When I click "mode_edit"
    Then I will see the text "Editing the Article Link: Google"
    And I will see the element "#article_link_url"
    And I will see the element "#article_link_title"
    When I fill in "article_link_url" with the text "https://www.google.com/"
    And I fill in "article_link_title" with the text "Google - Edited by Test"
    And I click "save"
    Then I will see the text "Your Article Link has been saved."
    And I will see the text "Google - Edited by Test"
    When I click "delete"
    Then I will see the text "Your Article Link has been deleted"
    And I will not see the text "Google - Edited by Test"
