class CreateBagels < ActiveRecord::Migration
  def self.up
    create_table :bagels do |t|
      t.string :name
      t.string :dough
      t.boolean :toasted
      t.integer :price

      t.timestamps
    end
  end

  def self.down
    drop_table :bagels
  end
end
