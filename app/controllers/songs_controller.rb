class SongsController < ApplicationController
  
  def index
  end

  def show
    @songs = Song.all
  end

  def create
    @song = Song.new(permit_params)
    @song.save!
    redirect_to action: "show"
  end

  def new
  end

 private
  def permit_params
    params.require(:song).permit(:name, :image)
  end
end
