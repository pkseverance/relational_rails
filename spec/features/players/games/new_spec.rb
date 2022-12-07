require 'rails_helper'

RSpec.describe 'player_game creation' do
    before(:each) do
        @player_1 = Player.create!(name: 'Trish', age: 22, is_online: true)
        @game_1 = @player_1.games.create!(name: 'Minecraft', is_installed: true, hours_played: 10000)
    end

    it 'links to new player_game page' do
        visit "/players/#{@player_1.id}/games"

        expect(current_path).to eq("/players/#{@player_1.id}/games")
        expect(page).to have_content('New Game')

        click_on('New Game')
        expect(current_path).to eq("/players/#{@player_1.id}/games/new")
    end

    it 'creates new player_game' do
        visit "/players/#{@player_1.id}/games/new"

        fill_in('name', with: 'Half-Life 2')
        fill_in('hours_played', with: 80)

        click_button('Create Game')
    end
end