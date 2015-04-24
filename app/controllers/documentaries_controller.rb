class DocumentariesController < ApplicationController
  def index
    params[:type] = :new if not params[:type]

    @documentaries = Documentary.includes(:genres)

    @documentaries = case params[:type].to_sym
    when :new
      @documentaries.order(created_at: :desc)
    when :approved
      @documentaries.where(approved: true)
    when :top
      @documentaries.order(backers: :desc)
    when :completed
      @documentaries.where(percent_funded: 100)
    end

    @documentaries = @documentaries.where(genres: {title: params[:genre]}) if params[:genre]
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
