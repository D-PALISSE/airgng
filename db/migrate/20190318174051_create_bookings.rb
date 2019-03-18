class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :goat, foreign_key: true
      t.string :status
      t.date :beginning_date
      t.date :end_date
      t.integer :total_amount

      t.timestamps
    end
  end
end
