require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get evolutions_home" do
    get :evolutions_home
    assert_response :success
  end

  test "should get guide" do
    get :guide
    assert_response :success
  end

end
