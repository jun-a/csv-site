class DonationPurposes < ActiveRecord::Migration
  def change
    create_table  :donation_purposes do |t|
      t.string  :donation_purpose

      t.timestamps  null: false
    end
  end
end
