class Tour < ApplicationRecord
  belongs_to :discount
  belongs_to :category
  has_many :comments, as: :commentable
  has_many :likes, as: :likeable
  has_many :ratings, as: :ratingable

  validates :tour_name, presence: true
  validates :description, presence: true
  validates :country, presence: true
  validates :city, presence: true
  validates :price, presence: true, numericality: true
  validates :number_day, presence: true, numericality: true
  validates :image, presence: true

  mount_uploader :image, ImageUploader
end
