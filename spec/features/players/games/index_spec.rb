require 'rails_helper'

RSpec.describe 'Player Games Index' do
    before(:each) do
        @player_1 = Player.create!(name: 'Trish', age: 22, is_online: true)
        @game_1 = @player_1.games.create!(name: 'Minecraft', is_installed: true, hours_played: 10000)
    end

    it 'shows names of all games for player' do
        visit "/players/#{@player_1.id}/games"

        expect(page).to have_content(@game_1.name)
        expect(page).to have_content(@game_1.is_installed)
        expect(page).to have_content(@game_1.hours_played)
    end

    it 'links to players index' do
        visit "/players/#{@player_1.id}/games"
        
        expect(page).to have_link('Games Index', href: '/games')

    end

    it 'links to games index' do
        visit "/players/#{@player_1.id}/games"

        expect(page).to have_link('Players Index', href: '/players')
    end
end