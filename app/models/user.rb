class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :videos, dependent: :destroy

  has_many :likes, dependent: :destroy

  validates :name, {presence: true}
  validates :email, {presence: true}
  validates :password, {presence: true}

  mount_uploader :image, ImagesUploader
end
