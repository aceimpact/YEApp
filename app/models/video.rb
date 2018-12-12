class Video < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy

  validates :name, presence: true

  attr_accessor :url

  before_validation :format_youtube_uuid

  def format_youtube_uuid
    match_data = self.url.match(/https?:\/\/www\.youtube\.com\/watch\?v=(\w{11})/)
    self.uuid = match_data[1]
  end
end
