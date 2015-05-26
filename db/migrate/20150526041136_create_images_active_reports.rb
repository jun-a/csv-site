class CreateImagesActiveReports < ActiveRecord::Migration
  def change
    create_table :images_active_reports do |t|

      t.references :image, null: false
      t.references :active_report, null: false

      t.timestamps null: false
    end
    add_index :images_active_reports, :image_id
    add_index :images_active_reports, :active_report_id
  end
end