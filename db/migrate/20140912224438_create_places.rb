class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.integer :width
      t.integer :height
      t.text :description
      t.references :user, index: true

      t.timestamps
    end
  end
end
