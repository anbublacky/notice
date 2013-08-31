class CreateNoticeEventContacts < ActiveRecord::Migration
  def change
    create_table :notice_event_contacts do |t|
      t.string :name
      t.string :country
      t.string :mobile
      t.string :telephone
      t.integer :notice_display_id

      t.timestamps
    end
  end
end
