class CreateDonationsEmployees < ActiveRecord::Migration
  def change
    create_table :donations_employees do |t|

      t.references :donation, null: false
      t.references :employee, null: false
      t.integer    :donation_price

      t.timestamps null: false
    end
    add_index :donations_employees, :donation_id
    add_index :donations_employees, :employee_id
  end
end