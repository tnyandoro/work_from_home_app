require 'capybara/rails'

RSpec.describe Group, type: :model do
  context 'Group validation tests' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:icon) }
  end

  context 'Group association tests' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:transactions) }
  end
end
