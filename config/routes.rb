Rails.application.routes.draw do
  devise_for :users
  root 'dashboards#index'
  resource :dashboard, except: [:new, :edit, :show] do

  end
end
