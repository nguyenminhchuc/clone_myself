class Tour < ApplicationRecord
  include SearchCop #//để sử dụng các phương thức trong gem
  belongs_to :discount
  belongs_to :category
  has_many :comments, as: :commentable
  has_many :likes, as: :likeable, dependent: :destroy
  has_many :ratings, as: :ratingable

  validates :tour_name, presence: true
  validates :description, presence: true
  validates :country, presence: true
  validates :city, presence: true
  validates :price, presence: true, numericality: true
  validates :number_day, presence: true, numericality: true
  validates :image, presence: true

  mount_uploader :image, ImageUploader

  def self.search_by(search_term)
   where("LOWER(tour_name)) LIKE :search_term", search_term: "%#{search_term.downscase}%")
  end

  #// khai báo scope search
  search_scope :search do
    attributes all: [:tour_name, :city, :country] #//khai báo tập các field muốn search

    options :all, type: :fulltext, default: true #//định nghĩa chúng ta muốn sử dụng full-text search
  end
end
