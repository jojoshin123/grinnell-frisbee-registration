require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  imgs = ["grinnell_1.jpg", "grinnell_2.jpg", "grinnell_3.jpg", "grinnell_4.jpg"]

  test "get home and check dynamic image" do
    get root_url
    assert_response :success
    assert_select "img"
    assert_includes imgs, assigns(:img)
  end

  test "get contact and check dynamic image" do
    get contact_url
    assert_response :success
    assert_select "img"
    assert_includes imgs, assigns(:img)
  end

  test "get about and check dynamic image" do
    get about_url
    assert_response :success
    assert_select "img"
    assert_includes imgs, assigns(:img)
  end

end
