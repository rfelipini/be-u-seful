Rails.application.routes.draw do

  devise_for :users
  resources :volunteers, only: [:new, :create, :show]
  resources :students, only: [:new, :create, :show] do
    resources :fields_of_interests, only: [:new, :create]
    resources :languages, only: [:new, :create]
    resources :videos, only: [:new, :create]
    resources :professional_experiences, only: [:new, :create]
    resources :courses, only: [:new, :create]
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
