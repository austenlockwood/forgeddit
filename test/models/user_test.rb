require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user exists" do
    assert User
  end

  test "user can be created" do
    dude = User.create!
    assert dude
  end

  
end
