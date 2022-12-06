require 'rails_helper'

RSpec.describe 'Player edit' do
    before(:each) do
        @player_1 = Player.create!(name: 'Trish', age: 22, is_online: true)
        @game_1 = @player_1.games.create!(name: 'Minecraft', is_installed: true, hours_played: 10000)
    end

    it 'links to player edit page' do
        visit '/players'

        click_button "Edit #{@player_1.name}"
        expect(current_path).to eq("/players/#{@player_1.id}/edit")
        
    end

    it 'can edit the player' do
        player = Player.create!(name: 'Tris', age: 21, is_online: true)
        
        visit '/players'

        click_button "Edit #{player.name}"

        fill_in 'name', with: 'Trish'
        fill_in 'age', with: 22
        click_button 'Update Player'

        expect(current_path).to eq('/players')
        expect(page).to have_content('Trish')

        visit "/players/#{player.id}"
        expect(page).to have_content('Trish')
        expect(page).to have_content(22)
    end
end