class CreateNhls < ActiveRecord::Migration
  def change
    create_table :nhls do |t|

      t.timestamps
    end
  end
end
