class AddPropertyIdToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :User_id, :integer
    add_column :bookings, :Property_id, :integer
  end
end
