class Post < ApplicationRecord
  belongs_to :author, class_name: :User, foreign_key: :author_id
  has_many :votes, dependent: :destroy

  validates :content, presence: true

  def voted
    votes.where(voted: true)
  end

  def unvoted
    votes.where(voted: false)
  end
end
