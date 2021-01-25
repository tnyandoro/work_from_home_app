require 'capybara/rails'

RSpec.describe Transaction, type: :model do
  context 'Transaction validation tests' do
    it { should validate_presence_of(:name)}
    it { should validate_presence_of(:amount)}
  end
  context 'User association tests' do
    it { should belong_to(:author)}
    it { should belong_to(:group)}
  end
end
