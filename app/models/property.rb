class Property < ApplicationRecord
  belongs_to :user
  mount_uploader :photo_url, PhotoUploader
end
