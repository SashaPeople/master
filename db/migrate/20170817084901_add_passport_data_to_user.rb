class AddPassportDataToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :passport_data, :string
  end
end
