class ClientUsers < ActiveRecord::Migration
  def change
    create_table  :client_users do |t|
      t.string  :name
      t.string  :email
      t.string  :password
      t.string  :password_digest
      t.references  :client
      t.references :image

      t.timestamps  null: false
    end
  end
end
