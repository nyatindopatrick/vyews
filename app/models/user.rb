class User < ApplicationRecord
  has_many :posts
  has_many :followers
end
