class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.text :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
