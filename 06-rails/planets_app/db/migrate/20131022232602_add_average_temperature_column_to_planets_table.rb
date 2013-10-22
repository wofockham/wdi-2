class AddAverageTemperatureColumnToPlanetsTable < ActiveRecord::Migration
  def change
    add_column :planets, :average_temperatre, :float
  end
end
