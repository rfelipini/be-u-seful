Rails.application.routes.draw do

  get 'student_skills/new'
  devise_for :users
  resources :volunteers, only: [:new, :create, :show]
  resources :students, only: [:new, :create, :show] do
    resources :portfolio_types, only: [:new, :create]
    resources :fields_of_interests, only: [:new, :create]
    resources :languages, only: [:new, :create]
    resources :videos, only: [:new, :create]
    resources :professional_experiences, only: [:new, :create]
    resources :courses, only: [:new, :create]
    resources :student_skills, only: [:new, :create]
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
