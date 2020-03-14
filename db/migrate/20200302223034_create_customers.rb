class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :f_name
      t.string :l_name
      t.string :username
      t.timestamps
    end
  end
end
