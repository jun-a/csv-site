class DonationPurposes < ActiveRecord::Migration
  def change
    create_table  :donation_purposes do |t|
      t.string  :donation_purpose
      t.references  :client

      t.timestamps  null: false
    end
  end
end
