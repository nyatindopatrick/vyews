class Follow < ApplicationRecord
  belongs_to :follower, foreign_key: :user_id, class_name: :User
  belongs_to :following, foreign_key: :follower_id, class_name: :User

  validates_uniqueness_of :follower_id, scope: :user_id
end
