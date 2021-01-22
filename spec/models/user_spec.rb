require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do 

    it 'ensures name is present' do
    user = User.new(name: 'Name', email: 'test@email.com').save
    expect(user).to eq(false)
    end
    
    it 'ensures email is present' do
    user = User.new(email:'test@email.com').save
    expect(user).to eq(false)
    end 


  end
end
