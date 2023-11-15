class CreateInventories < ActiveRecord::Migration[7.1]
  def change
    create_table :inventories do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :quantity
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
