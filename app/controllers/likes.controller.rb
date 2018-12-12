class LikesContotoller < ApplicationController

  def create
    @like = Like.create(
      user_id: current_user.id,
      video_id: params[:video_id]
    )
    #いいねした投稿に移動させる
    redirect_to root_path
  end

  def destroy
    @like = Like.find_by(
      user_id: current_user.id,
      video_id: params[:video_id]
    )
    @like.destroy!
    redirect_to root_path
  end
end
