require 'capybara/rails'

RSpec.describe Group, type: :model do
  context 'Group validation tests' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:icon) }
  end
  context 'Group association tests' do
    it { should belong_to(:user) }
    it { should have_many(:transactions) }
  end
end
