class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :videos, dependent: :destroy

  has_many :likes, dependent: :destroy

  validates :name, {presence: true}

  mount_uploader :image, UserProfileImagesUploader
end
