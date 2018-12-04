class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :videos, dependent: :destroy

  validates :name, :email, :password, presence: true

  mount_uploader :image, ImagesUploader
end
