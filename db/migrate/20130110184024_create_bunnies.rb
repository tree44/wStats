class CreateBunnies < ActiveRecord::Migration
  def change
    create_table :bunnies do |t|

      t.timestamps
    end
  end
end
