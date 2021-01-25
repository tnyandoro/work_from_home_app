# frozen_string_literal: true

# require 'rails_helper'

# RSpec.describe 'Users', type: :request do
#   def login_via_form(email, password)
#     expect(page).to have_current_url('/users/sign_in')
#     fill_in 'Email', with: email
#     fill_in 'Password', with: password
#     click_button 'Sign in'
#   end

#   context 'GET #index' do
#     it 'returns a success response' do
#       get :index
#       expect(response).to be_success
#     end
#   end

#   context 'GET #show' do
#     it 'returns a success response' do
#       user = User.create!(name: 'Name', email: 'smaple@example.com')
#       get :show, params: { id: user.to_params }
#       expect(response).to be_success
#     end
#   end
# end
