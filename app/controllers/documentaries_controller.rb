class DocumentariesController < ApplicationController
  def index
    @documentaries = Documentary.all
  end

  def new
  end

  def show
    @documentary= Documentary.find(params[:id])
  end
end
