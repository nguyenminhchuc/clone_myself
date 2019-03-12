class AddIndexToTours < ActiveRecord::Migration[5.2]
  def change
    add_index :tours, [:tour_name, :city, :country], type: :fulltext
  end
end
