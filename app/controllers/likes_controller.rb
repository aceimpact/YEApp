class LikesController < ApplicationController
  before_action :set_video, only: [:create, :destroy]

  def create
    @like = current_user.likes.create!(video_id: params[:video_id])
  end

  def destroy
    @like = current_user.likes.find_by(video_id: params[:video_id])
    @like.destroy!
  end

  private

  def set_video
    @video = Video.find(params[:video_id])
  end
end
