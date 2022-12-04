class PlayerGamesController < ApplicationController
    def index
        @player = Player.find(params[:player_id])
        @player_games = @player.games
    end
end