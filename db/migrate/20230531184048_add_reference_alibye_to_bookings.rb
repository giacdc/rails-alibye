class AddReferenceAlibyeToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :alibye, foreign_key: true
  end
end
