class CreateClientOfShops < ActiveRecord::Migration
  def change
    create_table :client_of_shops do |t|
      t.string :name
      t.string :address
      t.integer :shop_tel
      t.string :shop_email
      t.references :client

      t.timestamps null: false
    end
  end
end
