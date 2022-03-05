Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :missions
  resources :divisions
  resources :teams
  resources :employees
  resources :users

  
  root :to=>"main#index"

end
