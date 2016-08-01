require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  test "the truth" do
    assert UsersController
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "can create a new user" do
    assert_difference "User.count", 1 do
    post :create, {user: {email: "humanperson@legitpage.com"}}
    end
  end

end
