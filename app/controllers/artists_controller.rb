class ArtistsController < ApplicationController
  def show
    @var = find
  end

  def new
    @var = Artist.new
  end

  def create
    @var = Artist.create(para)
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
    Artist.find_by_id(params[:id])
  end

  def redirect_show
    redirect_to artist_path(id: @var.id)
  end

  def para
    params.require(:artist).permit(:name, :bio)
  end

end
