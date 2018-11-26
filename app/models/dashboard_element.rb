# frozen_string_literal: true

# Dashboard Elements model
class DashboardElement < ApplicationRecord
  belongs_to :dashboard
  validates :name, presence: true
end
