class AddPartySizeToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :party_size, :integer
  end
end
