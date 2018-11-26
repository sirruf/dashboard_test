require 'rails_helper'

RSpec.describe DashboardElement, type: :model do
  context 'Element categories' do
    it 'should return valid categories list' do
      categories = DashboardElement.available_categories
      expect(categories).to be_a(Array)
      expect(categories).to all( be_an(String) )
    end
  end
end
