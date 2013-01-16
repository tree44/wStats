class AddSuperAdminToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :superadmin, :bool, :default => true 
  end
end
