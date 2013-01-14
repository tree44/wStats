class AddUser1ToStats < ActiveRecord::Migration
  def change
    add_column :stats, :user1, :integer
  end
end
