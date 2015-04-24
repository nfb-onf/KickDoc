class DocumentariesController < ApplicationController
  def index
    params[:type] = :new if not params[:type]

    @documentaries = case params[:type].to_sym
    when :new
      Documentary.order(created_at: :desc)
    when :approved
      Documentary.where(approved: true)
    when :top
      Documentary.order(backers: :desc)
    when :completed
      Documentary.where(percent_funded: 100)
    end
  end

  def new
  end

  def show
    @documentary= Documentary.find(params[:id])
  end
end
