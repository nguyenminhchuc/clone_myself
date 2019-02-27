class AddRatingableToRatings < ActiveRecord::Migration[5.2]
  def change
    add_column :ratings, :ratingable_id, :integer
    add_column :ratings, :ratingable_type, :string
  end
end
