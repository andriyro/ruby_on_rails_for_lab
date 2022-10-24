class CreateWares < ActiveRecord::Migration[7.0]
  def change
    create_table :wares do |t|
      t.string :name_product
      t.float :price

      t.timestamps
    end
  end
end
