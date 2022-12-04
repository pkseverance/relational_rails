Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/players', to: 'players#index'
  get '/players/:id', to: 'players#show'

  get '/games', to: 'games#index'
  get '/games/:id', to: 'games#show'
  get '/players/:player_id/games', to: 'player_games#index'
end
