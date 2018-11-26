require 'rails_helper'

RSpec.configure do |c|
  c.include DashboardHelper
end

RSpec.describe 'Dashboard Helper methods' do
  it 'should return valid available element categories list' do
    expect(available_categories).to eq(DashboardElement.available_categories)
  end
end
