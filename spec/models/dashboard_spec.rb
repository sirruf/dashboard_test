require 'rails_helper'

RSpec.describe Dashboard, type: :model do
  context 'Add elements' do
    let(:user) { User.create(email: 'user1@example.com',
                             password: SecureRandom.alphanumeric(10)) }
    let(:dashboard) { Dashboard.create(user: user) }
    it 'should add new element to dashboard' do
      elements_count = rand(1..10)
      elements = []
      elements_count.times do
        elements << dashboard.add_element_with_type(DashboardElement.available_categories.sample)
      end
      expect(dashboard.dashboard_elements.count).to eq(elements_count)
      expect(dashboard.dashboard_elements).to eq(elements)
    end
  end
end
