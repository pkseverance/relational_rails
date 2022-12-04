require 'rails_helper'

RSpec.describe 'Players Index' do
    before(:each) do
        @player_1 = Player.create!(name: 'Trish', age: 22, is_online: true)
        @player_2 = Player.create!(name: 'Lua', age: 23, is_online: true)
        
        @game_1 = @player_1.games.create!(name: 'Minecraft', is_installed: true, hours_played: 10000)
        @game_2 = @player_2.games.create!(name: 'Minecraft', is_installed: true, hours_played: 10000)
    end

    it 'shows names of all players ordered by most recently created' do
        visit '/players'

        expect(page).to have_content(@player_1.name)
        expect('Lua').to appear_before('Trish', only_text: true)
    end

    it 'has timestampes next to each player' do
        visit '/players'

        expect(page).to have_content(@player_1.created_at)
    end

    it 'links to players index' do
        visit '/players'
        
        expect(page).to have_link('Games Index', href: '/games')

    end

    it 'links to games index' do
        visit '/players'

        expect(page).to have_link('Players Index', href: '/players')
    end
end