require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  # all the images in the app/assets/images directory
  imgs = ["grinnell_1.jpg", "grinnell_2.jpg", "grinnell_3.jpg", "grinnell_4.jpg"]

  test "get home and check dynamic image" do
    get root_url
    assert_response :success
    assert_select "img" # check img HTML element
    assert_includes imgs, assigns(:img) #check if @img is a member of the array
  end

  test "get contact and check dynamic image" do
    get contact_url
    assert_response :success
    assert_select "img" # check img HTML element
    assert_includes imgs, assigns(:img) #check if @img is a member of the array
  end

  test "get about and check dynamic image" do
    get about_url
    assert_response :success
    assert_select "img" # check img HTML element
    assert_includes imgs, assigns(:img) #check if @img is a member of the array
  end

end
