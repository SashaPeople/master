class AddTrainIdToVagons < ActiveRecord::Migration[5.1]
  def change
    add_belongs_to :vagons, :train
  end
end
