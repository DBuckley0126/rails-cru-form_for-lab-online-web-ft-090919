class GenresController < ApplicationController
  def show
    @var = find
  end

  def new
    @var = Genre.new
  end

  def create
    @var = Genre.create(para)
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
    Genre.find_by_id(params[:id])
  end

  def redirect_show
    redirect_to genre_path(id: @var.id)
  end

  def para
    params.require(:genre).permit(:name)
  end

end
