Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/games', to: 'games#index'
  get '/players', to: 'players#index'
  get '/players/new', to: 'players#new'
  post '/players', to: 'players#create'


  get '/games/:id', to: 'games#show'
  get '/players/:id', to: 'players#show'
  get '/players/:player_id/games', to: 'player_games#index'
  get '/players/:player_id/games/new', to: 'player_games#new'
  post '/players/:player_id/games', to: 'player_games#create'
  get '/players/:id/edit', to: 'players#edit'
  patch '/players/:id', to: 'players#update'
  
end