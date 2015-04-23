class DocumentariesController < ApplicationController
  def index
    @documentaries = Documentaries.all
  end

  def new
  end
end