require 'test_helper'

class FrontControllerTest < ActionController::TestCase
  test "should get search" do
    get :search
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get view" do
    get :view
    assert_response :success
  end

end
