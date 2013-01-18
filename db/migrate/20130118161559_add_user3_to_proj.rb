class AddUser3ToProj < ActiveRecord::Migration
  def change
    add_column :projs, :user3, :integer
  end
end
