class VideosController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_editable_video, only: [:edit, :update, :destroy]

  def index
    @videos = Video.all
    @likes = Like.where(video_id: params[:video_id])
  end

  def new
    @video = current_user.videos.build
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
    @likes = Like.find(id: @user.id)
  end

  def create
    @video = current_user.videos.build(video_params)
    if @video.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def update
    if @video.update_attributes(video_params)
      redirect_to
    else
      render 'edit'
    end
  end

  def destroy
    @video.destroy!
    redirect_to root_url
  end


  private

  def video_params
    params.require(:video).permit(:name, :url, :comment)
  end

  def set_editable_video
    @video = current_user.videos.find(params[:id])
  end
end
