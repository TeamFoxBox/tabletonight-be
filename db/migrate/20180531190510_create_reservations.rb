class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.references :appointment, foreign_key: true
      t.references :table, foreign_key: true
      t.references :restaurant, foreign_key: true
      t.boolean :booked

      t.timestamps
    end
  end
end
