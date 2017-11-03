Rails.application.routes.draw do
  devise_for :users
  resources :answers
  resources :questions

  root to: 'questions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end