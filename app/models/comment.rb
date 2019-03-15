class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  acts_as_tree order: "created_at ASC"

  validates :user, presence: true
  validates :content, presence: true
  acts_as_tree order: "created_at ASC"
end
