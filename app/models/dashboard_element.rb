class DashboardElement < ApplicationRecord
  belongs_to :dashboard
  validates :name, presence: true
end
