require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get do" do
    get :do
    assert_response :success
  end

end
