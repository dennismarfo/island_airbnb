class RemoveUserIdToBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :user_id, :string
    remove_column :bookings, :property_id, :string
  end
end
