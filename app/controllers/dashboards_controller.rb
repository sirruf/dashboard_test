# frozen_string_literal: true

# User's Dashboard Controller
class DashboardsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_dashboard
  before_action :set_element, only: %i[update destroy]

  def index
    @elements = @dashboard.dashboard_elements
  end

  def create
    @element = @dashboard.add_element_with_type(params[:category])
  end

  def update
    @element.update_attributes(element_params)
  end

  def destroy
    @element.destroy
  end

  private

  def set_dashboard
    @dashboard = current_user.default_dashboard
  end

  def set_element
    @element = @dashboard.dashboard_elements.find(params[:element_id])
  end

  def element_params
    params.permit(:position_top, :position_left, :category)
  end
end
