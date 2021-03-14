# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cap = Captain.create([
    {name: "Tony Bony", email: "tony@grinnell.edu", password:"123456"},
    {name: "Gary Bologna", email: "gary@grinnell.edu", password:"abcdef"}])

players = Player.create([
    {name: "Richard Pichard", captain_id: 1}, 
    {name: "Abby Laddy", captain_id: 1},
    {name: "Dylan Bilan", captain_id: 1},
    {name: "Sally Wally", captain_id: 2},
    {name: "Bobby Sobby", captain_id: 2},
    {name: "Chippy Skippy", captain_id: 2}])
