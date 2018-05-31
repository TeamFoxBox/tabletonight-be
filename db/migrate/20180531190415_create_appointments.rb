class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :table, foreign_key: true
      t.date :date
      t.time :time_start
      t.time :time_end

      t.timestamps
    end
  end
end
