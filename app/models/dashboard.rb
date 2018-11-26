class Dashboard < ApplicationRecord
  has_many :dashboard_elements
  belongs_to :user

  def self.dashboard(user)
    Dashboard.find_or_create_by(user: user)
  end

  def add_element_with_type(category)
    (dashboard_elements << DashboardElement.new(category: category,
                                                name: "Panel #{category.upcase}")).last
  end
end
