class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.integer :author_id
      t.string :description

      t.timestamps null: false
    end
  end
end