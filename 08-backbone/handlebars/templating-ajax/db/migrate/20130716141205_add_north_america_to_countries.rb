class AddNorthAmericaToCountries < ActiveRecord::Migration
  def up
    add_column :countries, :north_america, :boolean, :default => false
  end

  def down
    drop_column :countries, :north_america
  end

end
