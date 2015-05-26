class Employees < ActiveRecord::Migration
  def change
    create_table  :employees  do |t|
      t.string  :name
      t.date    :birth_day
      t.string  :employee_email
      t.integer :donation_price, :null => false  #メンバーごとの寄付金額
      t.date    :date_of_hire   #入社日  
      t.string  :client_position

      t.references  :client
      t.references  :sex
      t.references  :supporter_voice

      t.timestamps  null: false
    end
  end
end

