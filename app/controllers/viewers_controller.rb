class ViewersController < ApplicationController

  before_action :set_viewer, only: [:show, :edit, :update]

  def index
    @viewers = Viewer.all
  end

  def show
  end

  def new
    @viewer = Viewer.new
  end

  def create
    viewer = Viewer.create(viewer_params)
    redirect_to viewer
  end

  def edit
  end

  def update
    @viewer.update(viewer_params)
    redirect_to @viewer
  end

  def destroy
    Viewer.destroy(params[:id])
    redirect_to viewers_path 
  end

  private

  def set_viewer
    @viewer = Viewer.find(params[:id])
  end

  def viewer_params
    params.require(:viewer).permit(:first_name, :last_name)
  end
end
