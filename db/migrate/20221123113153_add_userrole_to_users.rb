class AddUserroleToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :userrole, null: true, foreign_key: true
  end
end
