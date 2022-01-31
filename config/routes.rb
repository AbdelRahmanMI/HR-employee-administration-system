Rails.application.routes.draw do
  resources :missions
  resources :divisions
  resources :teams
  resources :employees
  resources :users

  root :to=>"main#index"

end
