require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get registrations" do
    get :registrations
    assert_response :success
  end

end
