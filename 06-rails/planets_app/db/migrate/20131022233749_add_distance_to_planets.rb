class AddDistanceToPlanets < ActiveRecord::Migration
  def change
    add_column :planets, :distance, :float
  end
end
