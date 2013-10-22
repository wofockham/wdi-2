class RenameAverageTemperatreColumnToAverageTemperature < ActiveRecord::Migration
  def change
    rename_column :planets, :average_temperatre, :average_temperature
  end
end
