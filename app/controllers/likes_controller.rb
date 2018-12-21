class LikesController < ApplicationController

  def create
    @like = current_user.likes.create!(video_id: params[:video_id])
    @likes = Like.where(video_id: params[:video_id])
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, video_id: params[:video_id])
    like.destroy!
    @likes = Like.where(video_id: params[:video_id])
  end
end
