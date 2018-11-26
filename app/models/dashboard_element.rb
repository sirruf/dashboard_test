# frozen_string_literal: true

# Dashboard Elements model
class DashboardElement < ApplicationRecord
  belongs_to :dashboard
  validates :name, presence: true

  def self.available_categories
    %w[A B C]
  end

end
