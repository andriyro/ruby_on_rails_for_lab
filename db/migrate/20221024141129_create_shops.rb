class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :Name_shop
      t.string :Address
      t.string :Coordinates

      t.timestamps
    end
  end
end
