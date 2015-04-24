class DocumentariesController < ApplicationController
  def index
    @documentaries = Documentary.all
  end

  def new
    @documentary = Documentary.new
  end

  def create
    # raise params
    @documentary = Documentary.create(documentary_params)
    redirect_to documentary_path(@documentary.id)
  end

  def show
    @documentary= Documentary.find(params[:id])
  end

  private

  def documentary_params
    params.require(:documentary).permit(:title, :short_synopsis, :long_synopsis, :city, :budget, :purpose,
                                        :thumnail_url,
                                        :pitch_video_url,
                                        :expired_at => [])
  end
end
