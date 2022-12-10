class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :Email, :e_address
  end
end
