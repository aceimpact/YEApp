class Video < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy

  validates :name, presence: true

  attr_accessor :url
end
