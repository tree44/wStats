class CreateNhltests < ActiveRecord::Migration
  def change
    create_table :nhltests do |t|

      t.timestamps
    end
  end
end
