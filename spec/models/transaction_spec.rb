require 'capybara/rails'

RSpec.describe Transaction, type: :model do
  context 'Transaction validation tests' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:amount) }
  end

  context 'Transaction association tests' do
    it { is_expected.to belong_to(:author) }
    it { is_expected.to belong_to(:group).optional }
  end
end
