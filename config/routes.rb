Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :test_case_solutions, only: [:show, :update]
  resources :problems do
    resources :test_cases
  end
  resources :solutions do
    get "tests/update", on: :member, to: "solutions/tests#update", format: :js
  end
  resources :test_cases
  devise_for :users
  get 'home/index'
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
