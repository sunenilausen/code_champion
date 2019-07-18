Rails.application.routes.draw do
  resources :test_case_solutions
  resources :problems
  resources :solutions
  resources :test_cases
  devise_for :users
  get 'home/index'
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
