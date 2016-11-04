require "spec_helper"

feature 'User logs into site', type: :feature, js: true do
  scenario 'User with valid credentials logs into site' do
    visit root_path
    fill_in 'Username or email', with:'admin@admin.com'
    fill_in 'Existing Password', with:'admin123'
    click_button "Sign in"
  end
end