Given(/^a valid user$/) do
  @user = User.create!({
             :email => "testuser@invalid.com",
             :name => "Testy McTesterson",
             :username => "TestUser",
             :password => "testpassword",
             :password_confirmation => "testpassword"
           })
end

Given(/^a second valid user$/) do
  @user = User.create!({
             :email => "testuser2@invalid.com",
             :name => "Testessa Tester",
             :username => "TestUser2",
             :password => "testpassword",
             :password_confirmation => "testpassword"
           })
end

Given(/^that I visit the login page$/) do
    visit '/'
end

Given(/^that I am logged in as a valid user$/) do
    find('#sign_in_form').fill_in('user_email', :with => 'testuser@invalid.com')
    find('#sign_in_form').fill_in('user_password', :with => 'testpassword')
    first('#sign_in_form input[type="submit"]').click
    expect(page).to have_content("Welcome Back to Tumblful!")
end

When(/^I click "([^"]*)"$/) do |text|
    click_on(("#{text}"), :match => :first)
end

Then(/^I will see the text "([^"]*)"$/) do |text|
    expect(page).to have_content("#{text}")
end

Then(/^I will not see the text "([^"]*)"$/) do |text|
    expect(page).to have_no_content("#{text}")
end

Then(/^I will see the element "([^"]*)"$/) do |selector|
    expect(page).to have_css("#{selector}")
end

When(/^I fill in "([^"]*)" with the text "([^"]*)"$/) do |field, text|
    fill_in ("#{field}"), :with => ("#{text}")
end

Then(/^I will not see the element "([^"]*)"$/) do |selector|
    expect(page).to have_no_css("#{selector}")
end

Given(/^I enter a bad user email and password$/) do
    find('#sign_in_form').fill_in('user_email', :with => 'BadActor@BadEmail.horse')
    find('#sign_in_form').fill_in('user_password', :with => 'BadPassword')
    first('#sign_in_form input[type="submit"]').click
end

When(/^I sign up using too short of a password$/) do
    find('#sign_up_form').fill_in('user_name', :with => 'User Name')
    find('#sign_up_form').fill_in('user_username', :with => 'Username')
    find('#sign_up_form').fill_in('user_email', :with => 'UserName@useremail.com')
    find('#sign_up_form').fill_in('user_password', :with => 'Short')
    first('#sign_up_form input[type="submit"]').click
end

When(/^I sign up as a user$/) do
    find('#sign_up_form').fill_in('user_name', :with => 'User Name')
    find('#sign_up_form').fill_in('user_username', :with => 'Username')
    find('#sign_up_form').fill_in('user_email', :with => 'UserName@useremail.com')
    find('#sign_up_form').fill_in('user_password', :with => 'UserPassword')
    first('#sign_up_form input[type="submit"]').click
end