class FromClientMessages < ActiveRecord::Migration
  def change
    create_table :from_client_messages do |t|
      t.text  :contact_message  #お問い合わせ内容 
      t.references  :client_user
      t.references  :client

      t.timestamps  null: false
    end
  end
end
