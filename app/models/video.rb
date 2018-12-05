class Video < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy

  validates :name, :video_id, presence: true
end
