class Like < ApplicationRecord
  belongs_to :video
  belongs_to :user

  validates :user_id, {presence: true}
  validates :post_id, {presence: true}

end
