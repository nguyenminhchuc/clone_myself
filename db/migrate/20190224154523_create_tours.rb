class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.string :tour_name
      t.text :description
      t.text :image
      t.string :city
      t.string :country
      t.integer :price
      t.string :number_day
      t.references :discount, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
