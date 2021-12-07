Rails.application.routes.draw do
  get 'certificates/new'
  get 'student_skills/new'
  devise_for :users
  resources :volunteers, only: [:new, :create, :show]
  resources :students, only: [:new, :create, :show, :edit, :update] do
    resources :portfolio_types, only: [:new, :create]
    resources :fields_of_interests, only: [:new, :create]
    resources :languages, only: [:new, :create]
    resources :videos, only: [:new, :create]
    resources :professional_experiences, only: [:new, :create]
    resources :courses, only: [:new, :create]
    resources :student_skills, only: [:new, :create]
    resources :certificates, only: [:new, :create]
  end
  get "seja_voce", to: 'pages#seja_voce', as: "seja_voce"
  get "seja_util", to: 'pages#seja_util', as: "seja_util"
  get "student_page", to: 'pages#student_page', as: "student_page"
  get "volunteer_page", to: 'pages#volunteer_page', as: "volunteer_page"
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
