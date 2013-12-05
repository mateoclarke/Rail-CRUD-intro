class VideosController < ApplicationController

  def show
    id = params[:id]
    @video = Video.find(id)
  end

  def new
  	@video = Video.new
  end

  def create
  	@video = Video.new(videos_params)
  	@video.save
  	redirect_to root_path
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])
    @video.update(video_params)
    redirect_to root_path
  end

  def show_all
    @videos = Video.all
  end

  private
	def videos_params
  		params.require(:video).permit(:title, :description, :youtube_id)
	end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to root_path
  end


end