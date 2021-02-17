require "test_helper"

class PlayersControllerTest < ActionDispatch::IntegrationTest

  test "get roster and check dynamic image" do
    get roster_url
    assert_response :success
    assert_select "img" # check img HTML element
    assert File.exist?("app/assets/images/" + assigns(:img)) # check if @img exists in images directory
  end
end
