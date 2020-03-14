class CreateCartCandies < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_candies do |t|
      t.integer :candy_id
      t.integer :cart_id
      t.timestamps
    end
  end
end
