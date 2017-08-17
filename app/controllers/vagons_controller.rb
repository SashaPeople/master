class VagonsController < ApplicationController 
  before_action :set_vagon, only: [:show, :edit, :update, :destroy]
  before_action :set_train, only: [:create, :new]

  def new 
    @vagon = Vagon.new 
  end

  def show 
  end

  def new 
    @vagon = Vagon.new 
  end

  def edit 
  end
  
  def create 
    @vagon = @train.vagons.new(vagon_params)
    if @vagon.save
      redirect_to @train
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
    redirect_to trains_path
  end

  protected 

  def set_train
    @train = Train.find(params[:train_id])
  end

  def set_vagon
    @vagon = Vagon.find(params[:id])
  end

  def vagon_params
    params.require(:vagon).permit(:number, :vtype)
  end 

  def set_train
    @train = Train.find(params[:train_id])
  end

  def set_vagon 
    @vagon = Vagon.find(params[:id])
  end

end
