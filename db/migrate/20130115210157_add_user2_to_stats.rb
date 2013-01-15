class AddUser2ToStats < ActiveRecord::Migration
  def change
    add_column :stats, :user2, :decimal
  end
end
