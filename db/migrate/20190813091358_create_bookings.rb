class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :check_in_date
      t.string :check_out_date
      t.string :total_price

      t.timestamps
    end
  end
end
