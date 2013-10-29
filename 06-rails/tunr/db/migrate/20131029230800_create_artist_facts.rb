class CreateArtistFacts < ActiveRecord::Migration
  def change
    create_table :artist_facts do |t|
      t.text :fact
      t.text :website

      t.timestamps
    end
  end
end
