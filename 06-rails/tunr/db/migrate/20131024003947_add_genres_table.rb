class AddGenresTable < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :name
      t.text :image
      t.timestamps
    end
  end
end
