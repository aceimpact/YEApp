class LikesContotoller < ApplicationController

  def create
    @video = Video.find_by(id: params[:id])
    @like = Like.new(
      user_id: current_user.id,
      post_id: params[@video.id]
    )
    @like.save
    redirect_to root_path
  end

  def destroy
    @video = Video.find_by(id: params[:id])
    @like = Like.find_by(
      user_id: current_user.id,
      post_id: params[@video.id]
    )
    @like.destroy!
    redirect_to root_path
  end
end
