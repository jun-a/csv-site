class SupporterVoices < ActiveRecord::Migration
  def change
    create_table :supporter_voices do |t|
      t.string  :title
      t.string  :content
      t.date  :publish_start_date  #掲載開始日時
      t.date  :publish_end_date  #掲載終了日時
      t.references  :client
      t.references  :client_user
      t.references  :category

      t.timestamps  null: false
    end
  end
end
