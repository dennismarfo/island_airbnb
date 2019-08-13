class RenamePhotoToProperty < ActiveRecord::Migration[5.2]
  def change
    rename_column :properties, :photo_url, :photo
  end
end
