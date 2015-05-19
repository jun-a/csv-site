class FromClientMessages < ActiveRecord::Migration
  def change
    create_table :from_client_messages do |t|
      t.text  :contact_message  #お問い合わせ内容 
      t.reference  :client_user
      t.reference  :client

      t.timestanps  null: false
    end
  end
end
