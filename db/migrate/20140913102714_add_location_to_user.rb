class AddLocationToUser < ActiveRecord::Migration
  def change
    add_column :users, :width, :float
    add_column :users, :height, :float
    add_column :users, :radius, :float
  end
end
