class Discount < ApplicationRecord
  has_many :tours
  validates :discount, presence: true, numericality: true
end
