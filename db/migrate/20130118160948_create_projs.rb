class CreateProjs < ActiveRecord::Migration
  def change
    create_table :projs do |t|
      t.integer :rank
      t.string :player
      t.string :team
      t.string :pos
      t.integer :gp
      t.integer :g
      t.integer :a
      t.integer :pts
      t.integer :plus_minus
      t.integer :pim
      t.integer :ppp

      t.timestamps
    end
  end
end
