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

  test "user can have links" do
    ryan = User.create!({name: "Ryan", email: "iliveinflorida@lame.com"})
    google = Link.create!({url: "http://google.com", user_id: ryan.id })
    assert_equal [google], ryan.links
  end
end
