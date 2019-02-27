class Category < ApplicationRecord
  has_many :tours
  validates :category, presence: true, length: {minimum: Settings.min_category}
end
