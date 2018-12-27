class Like < ApplicationRecord
  belongs_to :video
  belongs_to :user

  validates :video_id, presence: true
  validates :user_id, presence: true
  validates :user_id, :uniqueness => {:scope => :video_id}
end
