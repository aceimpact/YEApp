class VideosController < ApplicationController

  skip_before_action :authenticate_user!

  def index
    @video = Video.all
  end

  def new
    @video = Video.new
  end

  def edit
    @video = Video.find(params[:id])
  end

  def show
    @video = Video.find_by!(id: params[:id])
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
    @video = Video.find(params[:id])
    if @video.update_attributes(video_params)
      redirect_to
    else
      render 'edit'
    end
  end

  def destroy
    @video = Video.find(params[:id])
    if @video.destroy!
      redirect_to root_url
    end
  end


  private

  def video_params
    params.require(:video).permit(:name, :video_id, :comment)
  end
end
