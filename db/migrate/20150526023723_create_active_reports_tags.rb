class CreateActiveReportsTags < ActiveRecord::Migration
  def change
    create_table :active_reports_tags do |t|
      t.references :active_report, null: false
      t.references :tag, null: false

      t.timestamps null: false
    end
    add_index :active_reports_tags, :active_report_id
    add_index :active_reports_tags, :tag_id
  end
end