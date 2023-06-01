class RemoveColumnAlibyeId < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :alibye_id, :string
  end
end
