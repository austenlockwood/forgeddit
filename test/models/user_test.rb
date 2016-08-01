require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "user exists" do
    assert User
  end

  test "user can be created" do
    dude = User.create!({name: "Ryan", email: "iliveinflorida@lame.com"})
    assert dude
  end

  test "user can't have invalid email" do
    assert_raise ActiveRecord::RecordInvalid do
      ryan = User.create!({name: "Ryan", email: "iliveinflorida"})
    end
  end

  test "user can have links" do
    ryan = User.create!({name: "Ryan", email: "iliveinflorida@lame.com"})
    google = Link.create!({url: "http://google.com", user_id: ryan.id })
    assert_equal [google], ryan.links
  end

  test "link url must have an http" do
    assert_raise ActiveRecord::RecordInvalid do
      ryan = User.create!({name: "Ryan", email: "iliveinflorida@lame.com"})
      google = Link.create!({url: "google.com", user_id: ryan.id, title: "Google" })
    end
  end

  test "link can have comments" do
    ryan = User.create!({name: "Ryan", email: "iliveinflorida@lame.com"})
    google = Link.create!({url: "http://google.com", user_id: ryan.id })
    cool_story_bro = Comment.create!({link_id: google.id, text: "I use Google to find things." })
    assert_equal [cool_story_bro], google.comments
  end

  # test "user can have comments" do
  #
  # end

end
