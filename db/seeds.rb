# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cap = Captain.create([{name: "Bob"}, {name: "Abbie"}, {name: "Tony"}])
players = Player.create([
    {name: "BobPlayer1", captain_id: 1}, 
    {name: "BobPlayer2", captain_id: 1},
    {name: "AbbiePlayer1", captain_id: 2},
    {name: "TonyPlayer1", captain_id: 3},
    {name: "TonyPlayer2", captain_id: 3},
    {name: "TonyPlayer3", captain_id: 3},
    {name: "TonyPlayer4", captain_id: 3}])
