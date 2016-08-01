require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user exists" do
    assert User
  end

  test "user can be created" do
    dude = User.create!({name: "Ryan", email: "iliveinflorida@lame.com"})
    assert dude
  end

  test "user cant have invalid email" do
    assert_raise ActiveRecord::RecordInvalid do
      ryan = User.create!({name: "Ryan", email: "iliveinflorida"})
    end

  end
end
