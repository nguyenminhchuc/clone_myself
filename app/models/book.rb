class Book < ApplicationRecord
  belongs_to :user
  belongs_to :tour

  validates :name, presence: true
  validates :address, presence: true
  validates :telephone, presence: true, numericality: true
  validates :number_user, presence: true, numericality: true
end
