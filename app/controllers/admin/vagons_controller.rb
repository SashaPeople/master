class Admin::VagonsController < Admin::BaseController 
  before_action :set_train, only: [ :new, :create ]
  before_action :set_vagon, only: [ :update, :show, :edit, :destroy ]

  def new 
    @vagon = Vagon.new 
  end

  def show 
  end

  def edit 
  end

  def create
    @vagon = @train.vagons.new(vagon_params)

    if @vagon.save
      redirect_to [:admin, @train] 
    else 
      render :new 
    end 
  end

  def update
    if @vagon.update(vagon_params)
      redirect_to [:admin, @vagon] 
    else 
      render :new
    end
  end

  def destroy 
    @vagon.destroy
    redirect_to admin_trains_path
  end

  protected 

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
