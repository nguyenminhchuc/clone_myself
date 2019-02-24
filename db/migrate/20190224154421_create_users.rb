class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.text :email
      t.text :avatar
      t.string :password_digest
      t.references :role, foreign_key: true

      t.timestamps
    end
  end
end
