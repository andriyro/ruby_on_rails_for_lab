class RemoveRoleidFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :roleid, :integer
  end
end
