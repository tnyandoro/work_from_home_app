# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Groups', type: :request do
  setup do
    @group = groups(:one)
  end
    it 'should create group' do
    assert_difference('Group.count') do
      post groups_url, params: { group: { icon: @group.icon, name: @group.name, user_id: @group.user_id } }
    end

    it 'renders the group template' do
      get :index
      expect(response).to render_template('index')
    end
  end
end
