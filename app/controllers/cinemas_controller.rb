class CinemasController < ApplicationController

  before_action :set_cinema, only: [:show, :edit, :update]

  def index
    @cinemas = Cinema.all
  end

  def show
  end

  def new
    @cinema = Cinema.new
  end

  def create
    cinema = Cinema.create(cinema_params)
    redirect_to cinema
  end

  def edit
  end

  def update
    @cinema.update(cinema_params)
    redirect_to @cinema
  end

  def destroy
    Cinema.destroy(params[:id])
    redirect_to cinemas_path
  end

  private

  def set_cinema
    @cinema = Cinema.find(params[:id])
  end

  def cinema_params
    params.require(:cinema).permit(:name)
  end
end
