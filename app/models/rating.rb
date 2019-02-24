class Rating < ApplicationRecord
  belongs_to :ratingable, polymorphic: true
end
