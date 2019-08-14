class Property < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :country, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :category, presence: true, inclusion: { in: ["Island", "Beach"] }
  validates :photo, presence: true
end
