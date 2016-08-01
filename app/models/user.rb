class User < ActiveRecord::Base
  validates :email, format: {with: /@/}, uniqueness: true
end
