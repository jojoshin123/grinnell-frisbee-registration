# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cap = Captain.create([{name: "Tony", email: "tony@grinnell.edu", password:"123456"}])
players = Player.create([
    {name: "Player1", captain_id: 1}, 
    {name: "Player2", captain_id: 1},])
