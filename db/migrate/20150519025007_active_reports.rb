class ActiveReports < ActiveRecord::Migration
  def change
    create_table  :active_reports do  |t|
      t.string  :title
      t.text  :content
      t.text  :comment
      t.date  :publish_start_date  #掲載開始日時
      t.date  :publish_end_date  #掲載終了日時
      t.references  :category
      t.references  :client
      t.references  :client_user
      #t.references imageがここに入るかも  

      t.timestanps   null: false
    end
  end
end
