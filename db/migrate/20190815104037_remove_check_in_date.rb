class RemoveCheckInDate < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :check_in_date
    remove_column :bookings, :check_out_date
    add_column :bookings, :check_in_date, :date
    add_column :bookings, :check_out_date, :date
  end
end
