class AdminUserComments < ActiveRecord::Migration
  def change
    create_table :admin_user_comments do |t|
      t.text  :admin_user_comment

      t.timestamps  null: false
    end
  end
end
