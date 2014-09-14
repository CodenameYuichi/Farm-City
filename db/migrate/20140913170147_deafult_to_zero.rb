class DeafultToZero < ActiveRecord::Migration
  def change
    change_column :users, :width, :float, default: 0
    change_column :users, :height, :float, default: 0
    change_column :users, :radius, :float, default: 0
  end
end
