class Property < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :country, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :category, presence: true, inclusion: { in: ["Island", "Beach"] }
  validates :photo, presence: true
end
