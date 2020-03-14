class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.boolean :purchased
      t.integer :customer_id
      t.float :total
      t.timestamps
    end
  end
end
