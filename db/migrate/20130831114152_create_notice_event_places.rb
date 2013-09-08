class CreateNoticeEventPlaces < ActiveRecord::Migration
  def change
    create_table :notice_event_places do |t|
      t.string :event_type
      t.string :country
      t.string :address1
      t.string :address2
      t.string :city
      t.string :county
      t.string :postcode
      t.float :latitude
      t.float :longitude
      t.datetime :eventdate
      t.time :eventtime
      t.integer :notice_display_id

      t.timestamps
    end
  end
end
