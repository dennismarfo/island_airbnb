class Property < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :country, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :photo_url, presence: true
end
