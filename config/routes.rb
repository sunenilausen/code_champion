Rails.application.routes.draw do
  resources :tournaments
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :problems do
    resources :test_cases
  end
  resources :solutions do
    get "tests/update", on: :member, to: "solutions/tests#update", format: :js
  end
  devise_for :users
  get 'home/index'
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
