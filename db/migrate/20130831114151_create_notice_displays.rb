class CreateNoticeDisplays < ActiveRecord::Migration
  def change
    create_table :notice_displays do |t|
      t.string :notice_type
      t.text :message
      t.string :posted_by
      t.integer :orbituarysite_id

      t.timestamps
    end
  end
end
