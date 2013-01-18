class AddUser1ToProj < ActiveRecord::Migration
  def change
    add_column :projs, :user1, :decimal
  end
end
