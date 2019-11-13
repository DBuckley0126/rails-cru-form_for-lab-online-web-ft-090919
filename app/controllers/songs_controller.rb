class SongsController < ApplicationController
  
  def index
    @songs = Song.all
  end

  def show
    @var = find
  end

  def new
    @var = Song.new
  end

  def create
    @var = Song.create(para)
    redirect_show
  end

  def edit
    @var = find
  end

  def update
    @var = find
    @var.update(para)
    redirect_show
  end

  private

  def find
    Song.find_by_id(params[:id])
  end

  def redirect_show
    redirect_to song_path(id: @var.id)
  end

  def para
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
