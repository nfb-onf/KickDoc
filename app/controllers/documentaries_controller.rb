class DocumentariesController < ApplicationController
  def index
    @documentaries = Documentary.all
  end

  def new
  end

  def show
    @documentary= Documentary.find(params[:id])
    @avatar= Faker::Avatar.image("random", "40x40")
  end
end
