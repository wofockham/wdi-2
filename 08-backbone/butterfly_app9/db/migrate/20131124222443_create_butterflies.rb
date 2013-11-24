class CreateButterflies < ActiveRecord::Migration
  def change
    create_table :butterflies do |t|
      t.string :name
      t.string :latin_name
      t.text :picture

      t.timestamps
    end
  end
end
