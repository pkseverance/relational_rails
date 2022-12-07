require 'rails_helper'

RSpec.describe 'Player creation' do
    it 'links to new player page' do
        visit '/players'

        expect(current_path).to eq('/players')
        expect(page).to have_content('New Player')
    end

    it 'creates new player' do
        visit '/players/new'

        fill_in('name', with: 'Pierce')
        fill_in('age', with: 22)
        fill_in('is_online', with: true)
        click_button('Create Player')
        
        expect(current_path).to eq('/players')
        expect(page).to have_content('Pierce')
    end
end