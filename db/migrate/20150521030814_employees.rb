class Employees < ActiveRecord::Migration
  def change
    create_table  :employees  do |t|
      t.string  :name
      t.integer :age
      t.string  :client_position
      t.references  :client

      t.timestamps  null: false
    end
  end
end

