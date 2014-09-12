class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :picture
      t.references :place, index: true
      t.string :name

      t.timestamps
    end
  end
end
