class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :category
      t.string :address_street
      t.string :address_city
      t.string :address_state
      t.string :address_zip
      t.string :billing_address_street
      t.string :billing_address_city
      t.string :billing_address_state
      t.string :billing_address_zip
      t.string :contact_first_name
      t.string :contact_last_name
      t.string :phone
      t.string :email
      t.text :notes

      t.timestamps
    end
  end
end
