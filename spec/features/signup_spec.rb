require 'rails_helper'

RSpec.describe 'Sign up Successfully', type: :feature do
  it 'Creates a new transaction' do
    visit '/users/sign_up'
    fill_in 'Name', with: 'Tendai'
    fill_in 'Email', with: 'tendai@example.com'
    fill_in 'Password', with: 'Pineapple'
    fill_in 'Password confirmation', with: 'Pineapple'
    click_button 'Sign up'
    expect(page).to have_text('Welcome To Home Transact')
  end
end
