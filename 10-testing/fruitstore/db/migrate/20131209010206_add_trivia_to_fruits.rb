class AddTriviaToFruits < ActiveRecord::Migration
  def change
    add_column :fruits, :country_of_origin, :string
    add_column :fruits, :color, :string
    add_column :fruits, :age, :string
    add_column :fruits, :description, :text
  end
end
