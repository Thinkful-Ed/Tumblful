Feature: Image Links
  Scenario: As a user, I shouldn't be able to visit the Image Links page without logging in.
    Given that I visit the login page
    When I click "All Image Links"
    Then I will see the text "You need to sign in or sign up before continuing."
    
  Scenario: As a valid and logged in user, I should be able to visit the Image Links page
    Given a valid user
    And that I visit the login page
    And that I am logged in as a valid user
    When I click "All Image Links"
    Then I will see the text "Create a New Image Link"
    
  Scenario: As a user, I should be able to create and delete Image Links
    Given a valid user
    And that I visit the login page
    And that I am logged in as a valid user
    When I click "All Image Links"
    And I click "Create a New Image Link"
    Then I will see the text "Create an Image Link"
    And I will see the element "#image_link_url"
    And I will see the element "#image_link_title"
    When I fill in "image_link_url" with the text "http://i.giphy.com/xT1XGSl5bcHRe2zi6Y.gif"
    And I fill in "image_link_title" with the text "I Feel Ecstatic!"
    And I click "Create Image link"
    Then I will see the text "I Feel Ecstatic!"
    And I will see the element ".image-link-image.thumbnail"
    And I will see the element ".edit-button"
    And I will see the element ".like-button"
    And I will see the element ".delete-button"
    When I click "delete"
    Then I will see the text "Your Image Link has been deleted"
    And I will not see the text "I Feel Ecstatic!"
    And I will not see the element ".image-link-image.thumbnail"
