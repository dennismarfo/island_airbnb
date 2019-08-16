class User < ApplicationRecord
  has_many :properties, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :properties, dependent: :destroy
  mount_uploader :avatar, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  def confirmation_required?
    !confirmed?
  end
end
