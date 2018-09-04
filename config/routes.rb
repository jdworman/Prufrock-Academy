Rails.application.routes.draw do
  root 'pages#index'
  get 'students', to: 'students#index'
  get 'instructors', to: 'instructors#index'
  get 'courses', to: 'courses#index'
  get 'cohorts', to: 'cohorts#index'
  get 'pages#index', to: 'sessions#new'



  resources :index
  resources :students
  resources :instructors
  resources :courses
  resources :cohorts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
