class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.decimal :width, :precision => 8, :scale => 2
      t.decimal :height, :precision => 8, :scale => 2
      t.text :description
      t.references :user, index: true

      t.timestamps
    end
  end
end
