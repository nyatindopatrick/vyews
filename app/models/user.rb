class User < ApplicationRecord
  has_one_attached :image
  has_one_attached :cover
  has_many :posts, foreign_key: :author_id, dependent: :destroy

  has_many :follows, dependent: :destroy

  has_many :follower_user, foreign_key: :follower_id, class_name: :Follow
  has_many :followers, through: :follower_user, source: :follower

  has_many :following_user, foreign_key: :user_id, class_name: :Follow
  has_many :following, through: :following_user, source: :following

  validates :username, :email, presence: true, uniqueness: { case_sensitive: false }
  validates :name, presence: true

  has_many :votes, foreign_key: :voter_id, dependent: :destroy

  def following?(u)
    following.include?(u)
  end
end
