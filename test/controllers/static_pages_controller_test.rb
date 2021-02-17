require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "get home and check dynamic image" do
    get root_url
    assert_response :success
    assert_select "img" # check img HTML element
    assert File.exist?("app/assets/images/" + assigns(:img)) # check if @img exists in images directory
  end

  test "get about and check dynamic image" do
    get about_url
    assert_response :success
    assert_select "img" # check img HTML element
    assert File.exist?("app/assets/images/" + assigns(:img)) # check if @img exists in images directory
  end
end
