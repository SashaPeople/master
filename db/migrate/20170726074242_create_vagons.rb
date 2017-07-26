class CreateVagons < ActiveRecord::Migration[5.1]
  def change
    create_table :vagons do |t|
      t.string :vtype

      t.timestamps
    end
  end
end
