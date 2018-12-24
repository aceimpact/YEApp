class Like < ApplicationRecord
  belongs_to :video, counter_cache: :likes_count
  belongs_to :user


  validates :user_id, presence: true
  validates :video_id, presence: true
  validates_uniqueness_of :video_id, scope: :user_id
end
