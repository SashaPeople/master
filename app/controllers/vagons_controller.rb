class VagonsController < ApplicationController 
<<<<<<< HEAD
  before_action :set_vagon, only: [:show, :edit, :update, :destroy]
  before_action :set_train, only: [:create, :new]
=======
  before_action :set_train, only: [ :new, :create ]
  before_action :set_vagon, only: [ :update, :show, :edit, :destroy ]
>>>>>>> master_yoda

  def new 
    @vagon = Vagon.new 
  end

  def show 
<<<<<<< HEAD
  end

  def new 
    @vagon = Vagon.new 
=======
>>>>>>> master_yoda
  end

  def edit 
  end

<<<<<<< HEAD
  def create 
    @vagon = @train.vagons.new(vagon_params)
=======
  def create
    @vagon = @train.vagons.new(vagon_params)

>>>>>>> master_yoda
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
<<<<<<< HEAD
    redirect_to @vagon.train
=======
    redirect_to trains_path
>>>>>>> master_yoda
  end

  protected 

<<<<<<< HEAD
  def set_train
    @train = Train.find(params[:train_id])
  end

  def set_vagon
    @vagon = Vagon.find(params[:id])
  end

  def vagon_params
    params.require(:vagon).permit(:vtype, :train_id, :vnumber)
=======
  def vagon_params
    params.require(:vagon).permit(:number, :vtype)
  end 

  def set_train
    @train = Train.find(params[:train_id])
  end

  def set_vagon 
    @vagon = Vagon.find(params[:id])
>>>>>>> master_yoda
  end

end
