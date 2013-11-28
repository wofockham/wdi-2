class AddCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.string :author
      t.text :blather
      t.timestamps
    end
  end
end
