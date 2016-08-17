Rails.application.routes.draw do
  root 'users#new'

  get 'register' => 'users#new', as: :register
  post 'users' => 'users#create'

  get 'login' => 'sessions#new', as: :login
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy', as: :logout


end
