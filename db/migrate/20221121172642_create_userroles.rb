class CreateUserroles < ActiveRecord::Migration[7.0]
  def change
    create_table :userroles do |t|
      t.string :namerole

      t.timestamps
    end
  end
end
