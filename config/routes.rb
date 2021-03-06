Rails.application.routes.draw do
  root 'pages#index'
  get 'students', to: 'students#index'
  get 'instructors', to: 'instructors#index'
  get 'courses', to: 'courses#index'
  get 'cohorts', to: 'cohorts#index'
  get 'principal/index'
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'

  resources :index
  resources :students
  resources :instructors
  resources :courses
  resources :cohorts
  resources :principal
  resources :sessions, only: [:create]
  resources :users

end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
