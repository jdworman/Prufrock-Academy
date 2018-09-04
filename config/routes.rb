Rails.application.routes.draw do
  devise_for :models
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'enroll' }
  root 'pages#index'
  get 'students', to: 'students#index'
  get 'instructors', to: 'instructors#index'
  get 'courses', to: 'courses#index'
  get 'cohorts', to: 'cohorts#index'
  get 'principal', to: 'principal#index'
  get 'contact', to: 'contact#index'
  get 'pages#index', to: 'sessions#new'

  #
  # get '/login' => 'devise#sessions#new'
  # post '/login' => 'sessions#create'
  # delete '/logout' => 'sessions#destroy'

  resources :index
  resources :students
  resources :instructors
  resources :courses
  resources :cohorts
  resources :admin
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
