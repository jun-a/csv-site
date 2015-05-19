class Clients < ActiveRecord::Migration
  def change
    create_table  :clients do |t|
      t.string  :name
      t.string  :address
      t.string  :tel_number
      t.string  :email
      t.string  :client_president  #クライアントの社長名  
      t.string  :client_manager #クライアントの担当者
      t.references  :contract_status  #リジョブとの契約関係

      t.timestamps  null: false
    end
  end
end
