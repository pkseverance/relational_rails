class PlayerGamesController < ApplicationController
    def index
        @player = Player.find(params[:player_id])
        @player_games = @player.games
    end

    def new
        @player = Player.find(params[:player_id])
    end

    def create
        player = Player.find(params[:player_id])
        create_player_game = player.games.create(player_game_params)
        redirect_to "/players/#{player.id}/games"
    end

    private
    def player_game_params
        params.permit(:name, :hours_played, :is_installed)
    end
end