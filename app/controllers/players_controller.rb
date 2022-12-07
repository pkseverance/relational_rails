class PlayersController < ApplicationController
    def index
        @players = Player.all.order('created_at DESC')
    end

    def show
        @player = Player.find(params[:id])
    end

    def new
        
    end
    
    def edit
        @player = Player.find(params[:id])
    end

    def update
        player = Player.find(params[:id])
        player.update(player_params)
        redirect_to '/players'
    end

    def create
        create_player = Player.create(player_params)
        redirect_to '/players'
    end

    private
    def player_params
        params.permit(:name, :age, :is_online)
    end
end