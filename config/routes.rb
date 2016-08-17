Rails.application.routes.draw do
  root 'users#new'

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

  

end
