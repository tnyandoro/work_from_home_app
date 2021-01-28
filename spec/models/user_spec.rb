require 'capybara/rails'

RSpec.describe User, type: :model do
  context 'User validation tests' do
    it { should validate_presence_of(:name) }
  end
  context 'User association tests' do
    it { should have_many(:transactions) }
    it { should have_many(:groups) }
  end
end
