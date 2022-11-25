class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.string :namecart
      t.integer :userid
      t.string :status
      t.timestamp :creation_timestamp

      t.timestamps
    end
  end
end
