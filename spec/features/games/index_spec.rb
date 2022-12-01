require 'rails_helper'

RSpec.describe 'Games Index' do
    before(:each) do
        @player_1 = Player.create!(name: 'Trish', age: 22, is_online: true)
        @game_1 = @player_1.games.create!(name: 'Minecraft', is_installed: true, hours_played: 10000)
    end

    it 'shows names of games' do
        visit '/games'

        expect(page).to have_content(@game_1.name)
    end
end