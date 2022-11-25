class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.integer :cartid
      t.float :price
      t.integer :quantity
      t.string :code

      t.timestamps
    end
  end
end
