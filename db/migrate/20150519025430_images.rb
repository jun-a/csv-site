class Images < ActiveRecord::Migration
  def change
    create_table  :images do |t|
      t.binary  :image
      t.references  :active_report
      t.references  :client
      t.references  :support_voice
      t.references  :donation
      t.references  :client_user

      t.timestamps  null: false
    end
  end
end
