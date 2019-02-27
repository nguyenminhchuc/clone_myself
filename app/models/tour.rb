class Tour < ApplicationRecord
  belongs_to :discount
  belongs_to :category
  has_many :comments, as: :commentable
  has_many :likes, as: :likeable
  has_many :ratings, as: :ratingable
end
