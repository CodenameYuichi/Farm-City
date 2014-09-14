class CreatePlacesAndUsers < ActiveRecord::Migration
  def change
    create_table :places_users do |t|
      t.references :place, index: true
      t.references :user, index: true
    end
  end
end
