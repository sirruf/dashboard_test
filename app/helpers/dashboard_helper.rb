# frozen_string_literal: true

# Dashboard views helper
module DashboardHelper
  def available_categories
    %w[A B C]
  end

  def position_for(element)
    { position: :absolute,
      top: "#{element.position_top}px",
      left: "#{element.position_left}px" }.map do |k, v|
      "#{k}: #{v}"
    end.join(';')
  end
end
