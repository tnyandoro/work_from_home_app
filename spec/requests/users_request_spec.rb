# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users', type: :request do
  context 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_success
    end
  end

  context 'GET #show' do
    it 'returns a success response' do
      user = User.create!(name: 'Name', email: 'test@email.com')
      get :show, params:{id: user.to_params }
      expect(response).to be_success
    end
  end
end
