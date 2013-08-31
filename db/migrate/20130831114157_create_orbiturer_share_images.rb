class CreateOrbiturerShareImages < ActiveRecord::Migration
  def change
    create_table :orbiturer_share_images do |t|
      t.string :orbiturer_other_images
      t.integer :orbituarysite_id

      t.timestamps
    end
  end
end
