require 'rails_helper'

RSpec.describe User, type: :model do
  context "User dashboard" do
    let(:user) { User.create(email: 'user1@example.com',
                             password: SecureRandom.alphanumeric(10)) }
    it 'should return new dashboard if not exists one' do
      expect(user.default_dashboard).to be_a(Dashboard)
    end

    it 'return new dashboard if exists' do
      dashboard = Dashboard.create
      user.dashboard = dashboard
      expect(user.default_dashboard).to eq(dashboard)
    end
  end
end
