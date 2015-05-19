class Tags < ActiveRecord::Migration
  def change
    create_table  :tag  do |t|
      t.string  :name

      t.timestanps  null: false
    end
  end
end
