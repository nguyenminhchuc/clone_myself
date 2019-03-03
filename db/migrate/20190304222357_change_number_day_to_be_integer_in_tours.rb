class ChangeNumberDayToBeIntegerInTours < ActiveRecord::Migration[5.2]
  def change
    change_column :tours, :number_day, :integer
  end
end
