class AddColumnsToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :alibye_id, :string
    add_column :bookings, :state, :string
    add_column :bookings, :start_hour, :time
    add_column :bookings, :end_hour, :time
    add_column :bookings, :total_price, :float
  end
end
