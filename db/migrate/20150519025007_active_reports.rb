class ActiveReports < ActiveRecord::Migration
  def change
    create_table  :active_reports do  |t|
      t.string  :title
      t.string  :content
      t.string  :comment
      t.date  :publish_start_date
      t.date  :publish_end_date
      t.references  :category
      t.references  :client
      t.references  :client_user
      #t.references imageがここに入るかも  

      t.timestanps   null: false
    end
  end
end
