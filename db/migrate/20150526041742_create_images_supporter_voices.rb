class CreateImagesSupporterVoices < ActiveRecord::Migration
  def change
    create_table :images_supporter_voices do |t|
     t.references :image, null: false
      t.references :supporter_voice, null: false

      t.timestamps null: false
    end
    add_index :images_supporter_voices, :image_id
    add_index :images_supporter_voices, :supporter_voice_id
  end
end