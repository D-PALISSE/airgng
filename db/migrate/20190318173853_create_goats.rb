class CreateGoats < ActiveRecord::Migration[5.2]
  def change
    create_table :goats do |t|
      t.string :photo
      t.string :name
      t.string :specie
      t.text :description
      t.string :address
      t.references :user, foreign_key: true
      t.integer :daily_price

      t.timestamps
    end
  end
end
