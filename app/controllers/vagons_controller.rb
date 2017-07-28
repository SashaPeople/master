class VagonsController < ApplicationController 
  before_action :set_vagon, only: [:show, :edit, :update, :destroy] 

  def index 
    @vagons = Vagon.all
  end

  def show 
    
  end

  def new 
    @vagon = Vagon.new 
  end

  def edit 

  end

  def create 
    @vagon = Vagon.new(vagon_params)
    if @vagon.save
      redirect_to @vagon
    else 
      render :new 
    end
  end

  def update 
    if @vagon.update(vagon_params)
      redirect_to @vagon 
    else 
      render :new
    end
  end

  def destroy
    @vagon.destroy
    redirect_to vagons_path
  end

  protected 

  def set_vagon 
    @vagon = Vagon.find(params[:id])
  end

  def vagon_params
    params.require(:vagon).permit(:vtype, :train_id, :vnumber)
  end

end
