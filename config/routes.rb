Rails.application.routes.draw do
  root 'welcome#index'

  get 'register' => 'users#new', as: :register
  post 'users' => 'users#create'

  get 'login' => 'sessions#new', as: :login
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy', as: :logout

  scope module: 'teams' do
    get 'teams/directory' => 'directory#index', as: :team_directory
    post 'teams/:id/add' => 'directory#add', as: :add_team

    get 'teams' => 'root#index', as: :teams
    get 'teams/new' => 'root#new', as: :new_team
    post 'teams' => 'root#create'
    get 'teams/:id' => 'root#show', as: :team
  end

  scope module: 'channels' do
    get 'teams/:id/channels/directory' => 'directory#index', as: :channel_directory
    post 'channels/:id/add' => 'directory#add', as: :add_channel

    get 'teams/:id/channels/new' => 'root#new', as: :new_channel
    post 'channels' => 'root#create'
    get 'channels/:channel_id' => 'root#show', as: :channel
  end

  namespace :api do
    get 'channels/:id/messages' => 'messages#index'
    post 'channels/:id/messages' => 'messages#create'
  end
end
