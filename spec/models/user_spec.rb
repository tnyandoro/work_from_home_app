# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'ensures name is present' do
      user = User.new(name: 'Name', email: 'test@email.com').save
      expect(user).to eq(false)
    end

    it 'ensures email is present' do
      user = User.new(email: 'test@email.com').save
      expect(user).to eq(false)
    end
  end

  context 'scope' do
    let(:params) { { name: 'Name', email: 'test@email.com' } }
    before(:each) do
      User.new(params).save
      User.new(params).save
      User.new(params).save
      User.new(params.merge(active: true)).save
      User.new(params.merge(active: false)).save
      User.new(params.merge(active: false)).save
    end

    it 'should return active users' do
      exoect(User.active_users_size).to eq(3)
    end

    it 'should return inactive users' do
      exoect(User.inactive_users_size).to eq(2)
    end
  end
end
