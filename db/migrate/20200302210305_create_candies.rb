class CreateCandies < ActiveRecord::Migration[6.0]
  def change
    create_table :candies do |t|
      t.string :name
      t.string :candy_type
      t.string :flavor
      t.string :description
      t.integer :inventory
      t.float :price
      t.timestamps
    end
  end
end
