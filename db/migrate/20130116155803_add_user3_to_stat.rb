class AddUser3ToStat < ActiveRecord::Migration
  def change
    add_column :stats, :user3, :integer, :default => 0 
  end
end
