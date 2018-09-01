Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root 'pages#index'
  get 'students', to: 'students#index' 
  get 'instructors', to: 'instructors#index'
  get 'courses', to: 'courses#index'
  get 'cohorts', to: 'cohorts#index' 
  get 'pages#index', to: 'sessions#new'
  get 'instructors/index'
  get 'instructors/edit'
  get 'instructors/new'
  get 'instructors/show'
  get 'cohort/index'
  get 'cohort/edit'
  get 'cohort/new'
  get 'cohort/show'
  get 'students/index'
  get 'students/edit'
  get 'students/new'
  get 'students/show'
  get 'instructor/index'
  get 'instructor/edit'
  get 'instructor/new'
  get 'instructor/show'
  get 'course/index'
  get 'course/edit'
  get 'course/new'
  get 'course/show'
  get 'courses/index'
  get 'courses/edit'
  get 'courses/new'
  get 'courses/show'
  get 'cohorts/index'
  get 'cohorts/edit'
  get 'cohorts/new'
  get 'cohorts/show'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :students
  resources :instructors
  resources :courses
  resources :cohorts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
