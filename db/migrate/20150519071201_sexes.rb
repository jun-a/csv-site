class Sexes < ActiveRecord::Migration
  def change
    create_table  :sexes do |t|
      t.string  :sex

      t.timestamps  null: false
    end
  end
end
