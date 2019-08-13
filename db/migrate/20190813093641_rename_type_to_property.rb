class RenameTypeToProperty < ActiveRecord::Migration[5.2]
  def change
    rename_column :properties, :type, :category
  end
end
