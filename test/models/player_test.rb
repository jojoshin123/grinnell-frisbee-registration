 require "test_helper"

class PlayerTest < ActiveSupport::TestCase

  test "should be valid" do
    cap = Captain.new(name:"Foo", id:1) # init Captain for player
    player = Player.new(name:"Player", captain_id: cap.id)
    assert player.valid?
  end

  # test "check player name presence validation" do
  #   cap = Captain.new(name:"Foo", id:1) # init Captain for player
  #   player = Player.new
  #   player.captain_id = cap.id
  #   assert_not player.save, "Name attribute is empty"
  # end

  # test "check player name length validation" do
  #   cap = Captain.new(name:"Foo", id:1) # init Captain for player
  #   player = Player.new(name: "x", captain_id: cap.id)
  #   puts player.valid?
  #   # assert player.valid?, "Name is too long"
  # end
end