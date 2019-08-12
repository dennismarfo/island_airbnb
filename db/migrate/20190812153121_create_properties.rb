class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.string :country
      t.string :description
      t.integer :price
      t.string :type
      t.string :photo_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
