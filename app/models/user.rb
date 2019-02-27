class User < ApplicationRecord
  belongs_to :role
  has_many :books
  has_many :comments, as: :commentable
  has_many :likes, as: :likeable
  has_many :ratings, as: :ratingable
end
