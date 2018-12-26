class LikesController < ApplicationController

  def create
    @video = Video.find(params[:video_id])
    @like = current_user.likes.create!(video_id: params[:video_id])
    @likes = Like.where(video_id: params[:video_id])
    @videos = Video.all
  end

  def destroy
    like = current_user.likes.find_by(video_id: params[:video_id])
    like.destroy!
    @likes = Like.where(video_id: params[:video_id])
    @video = Video.find(params[:video_id])
    @videos = Video.all
  end
end
