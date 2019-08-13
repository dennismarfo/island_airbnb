class Property < ApplicationRecord
  belongs_to :user
  mount_uploader :photo_url, PhotoUploader

  validates :name, presence: true, uniqueness: true
  validates :adress, presence: true
  validates :country, presence: true
  validates :description, presence: true
  validates :price, presense: true
  validates :category, presence: true
  validates :photo_url, presence: true
end
