class Vote < ApplicationRecord
  belongs_to :voter, class_name: :User, foreign_key: :voter_id
  belongs_to :post, class_name: :Post, foreign_key: :post_id

  validates :voter_id, :post_id, presence: true
  validates_uniqueness_of :post_id, scope: :voter_id
end
