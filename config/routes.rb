Rails.application.routes.draw do
  get 'certificates/new'
  get 'student_skills/new'
  devise_for :users
  resources :volunteers, only: [:new, :create, :show, :destroy]
  resources :students, except: [:index, :destroy], shallow: true do
    resources :portfolio_types, only: [:new, :create, :destroy]
    resources :fields_of_interests, only: [:new, :create, :destroy]
    resources :languages, only: [:new, :create, :destroy]
    resources :videos, only: [:new, :create, :destroy]
    resources :professional_experiences, only: [:new, :create, :destroy]
    resources :courses, only: [:new, :create, :destroy]
    resources :student_skills, only: [:new, :create, :destroy]
    resources :certificates, only: [:new, :create, :destroy]
  end
  get "seja_voce", to: 'pages#seja_voce', as: "seja_voce"
  get "seja_util", to: 'pages#seja_util', as: "seja_util"
  get "student_page", to: 'pages#student_page', as: "student_page"
  get "volunteer_page", to: 'pages#volunteer_page', as: "volunteer_page"
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
