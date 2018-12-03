class Video < ApplicationRecord

  belongs_to :user
  validates :name, :video_id, presence: true
end
