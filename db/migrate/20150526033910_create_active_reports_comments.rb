class CreateActiveReportsComments < ActiveRecord::Migration
  def change
    create_table :active_reports_comments do |t|
      t.text       :comment
      t.references :client
      t.references :client_user

      t.references :active_report

      t.timestamps null: false
    end
  end
end
