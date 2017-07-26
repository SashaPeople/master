class AddVagonIdToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_belongs_to :places, :vagon 
  end
end
