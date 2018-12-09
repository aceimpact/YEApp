class Video < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy

  validates :name, presence: true

  attr_accessor :url

  def initialize(url:)
    #urlからuuid部分を引き抜く処理
    self.url = url
    uuid = url.slice(33..43)
  end

  uuid = Video.new
end
