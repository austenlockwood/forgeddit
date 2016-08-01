class Link < ActiveRecord::Base
  validates :url, format: {with: /http/}

  belongs_to :user

end
