class CreateVagons < ActiveRecord::Migration[5.1]
  def change
    create_table :vagons do |t|
      t.string  :vtype
      t.integer :vnumber
      t.integer :top_seats
      t.integer :bottom_seats
      t.integer :l_top_seats
      t.integer :l_botom_seats
      t.integer :seat_place

      t.string  :type
      t.timestamps
    end
  end
end
