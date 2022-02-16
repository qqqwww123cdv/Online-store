class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :vendor_code
      t.decimal :price
      t.text :description

      t.timestamps
    end
    add_index :products, :name
    add_index :products, :vendor_code
    add_index :products, :price
  end
end
