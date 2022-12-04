# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@player_1 = Player.create!(name: 'Trish', age: 22, is_online: true)
@player_2 = Player.create!(name: 'Lua', age: 23, is_online: true)

@game_1 = @player_1.games.create!(name: 'Minecraft', is_installed: true, hours_played: 70000)
@game_2 = @player_1.games.create!(name: 'The Binding of Isaac: Rebirth', is_installed: true, hours_played: 300)

@game_3 = @player_2.games.create!(name: 'Minecraft', is_installed: true, hours_played: 70000)
@game_4 = @player_2.games.create!(name: 'The Binding of Isaac: Rebirth', is_installed: true, hours_played: 600)