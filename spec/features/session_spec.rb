require 'rails_helper'

RSpec.describe 'Session', type: :feature do
  before :each do
    user = User.new(name: 'Rumbidzayi')
    user.save
  end

  describe 'Sign up' do
    scenario 'User can sign up successfully' do
      visit new_user_path
      fill_in 'Name', with: :Tawonga
      click_button 'Create User'
      sleep(5)
      expect(page).to have_text('User was successfully created.')
    end
  end

  describe 'Sign in' do
    scenario 'User can sign in successfully' do
      visit new_session_path
      fill_in 'Name', with: 'Rumbidzayi'
      click_button 'Sign In'
      expect(page).to have_content('You are successfully logged in!')
    end
  end
end
