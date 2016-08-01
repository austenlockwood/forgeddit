class User < ActiveRecord::Base
  validates :email, format: {with: /@/}, uniqueness: true

  has_many :links
  has_many :comments
end
