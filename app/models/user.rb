class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_validation :set_default_role
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :role
  has_many :books
  has_many :comments, as: :commentable
  has_many :likes, as: :likeable
  has_many :ratings, as: :ratingable

  private

  def set_default_role
    self.role ||= Role.find_by(role_name: 'registered')
  end
end
