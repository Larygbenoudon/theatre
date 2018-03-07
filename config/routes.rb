Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    unlocks: 'users/unlocks'
  }, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :lieus
  resources :productions
  resources :companies
  resources :theatres

  get '/welcome', to: 'welcome#welcome'

  devise_scope :user do
    root to: "users/sessions#new"
  end
end
