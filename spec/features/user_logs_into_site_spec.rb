require "spec_helper"

feature 'User logs into site', type: :feature, js: true do
  before do
    default_user = User.create(
      name:'Admin User', 
      username:'admin',
      email:"admin@admin.com", 
      password:"admin123", 
      password_confirmation:"admin123"
    )
  end
  scenario 'User with valid credentials logs into site' do
    visit root_path
    fill_in 'Username or email', with:'admin@admin.com'
    fill_in 'Existing Password', with:'admin123'
    click_button "Sign in"
    expect(page).to have_content("Welcome Back to Tumblful!")
  end
end