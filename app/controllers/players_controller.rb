class PlayersController < ApplicationController
    def index
        @players = Player.all.order('created_at DESC')
    end

    def show
        @player = Player.find(params[:id])
    end
end