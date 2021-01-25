require 'rails_helper'

RSpec.describe 'Creates a new transaction', type: :feature do
  before :each do
    @user = User.create!(name: 'Ric', email: 'sample@example.com', password: 'pineapple')
  end
  # it 'Creates a new transaction' do
  #   visit '/users/sign_in'
  #   # fill_in 'user[name]',	with: @user.name
  #   fill_in 'user[email]', with: @user.email
  #   fill_in 'user[password]', with: @user.password
  #   click_button 'Log in'
  #   expect(page).to have_current_path(expected_path)
  #   # expect(current_path).to eql(root_path)

  #   click_button 'All  My Transactions'
  #   click_button 'Add new transaction'

  #   fill_in 'transaction[name]', with: 'My transaction'
  #   fill_in 'transaction[amount]', with: 500

  #   click_on 'Create Transaction'

  #   expect(page).to have_content('My transaction')
  #   sleep(5)
  # end
end
