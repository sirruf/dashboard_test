# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DashboardsController, type: :controller do
  login_user
  it 'should have a current_user' do
    expect(subject.current_user).to_not eq(nil)
  end

  it 'should get index of dashboard elements' do
    get 'index'
    response.should be_success
  end
end
