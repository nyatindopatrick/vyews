class User < ApplicationRecord
  has_one_attached :image
  has_one_attached :cover
  has_many :posts, foreign_key: :author_id

  has_many :follows

  has_many :follower_user, foreign_key: :follower_id, class_name: :Follow
  has_many :followers, through: :follower_user, source: :follower

  has_many :following_user, foreign_key: :user_id, class_name: :Follow
  has_many :following, through: :following_user, source: :following

  validates :username, :email, presence: true, uniqueness: { case_sensitive: false }
  validates :name, presence: true

  def get_image_url
    url_for(self.image)
  end

  def following?(u)
    following.include?(u)
  end
end
