require 'rails_helper'

RSpec.describe 'Players Show' do
    before(:each) do
        @player_1 = Player.create!(name: 'Trish', age: 22, is_online: true)
        @game_1 = @player_1.games.create!(name: 'Minecraft', is_installed: true, hours_played: 10000)
    end
    
    it 'shows player attributes' do
        visit "/players/#{@player_1.id}"
        
        expect(page).to have_content(@player_1.name)
        expect(page).to have_content(@player_1.age)
        expect(page).to have_content(@player_1.is_online)
    end

    it 'shows number of games' do
        visit "/players/#{@player_1.id}"

        expect(page).to have_content("Games in Library: #{@player_1.games.count}")
    end

    it 'links to players index' do
        visit "/players/#{@player_1.id}"
        
        expect(page).to have_link('Games Index', href: '/games')

    end

    it 'links to games index' do
        visit "/players/#{@player_1.id}"

        expect(page).to have_link('Players Index', href: '/players')
    end
end