require 'capybara/rails'

RSpec.describe User, type: :model do
  context 'User validation tests' do
    it { is_expected.to validate_presence_of(:name) }
  end

  context 'User association tests' do
    it { is_expected.to have_many(:transactions) }
    it { is_expected.to have_many(:groups) }
  end
end
