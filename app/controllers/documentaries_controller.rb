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
  end

  def show
    @documentary= Documentary.find(params[:id])
  end
end
