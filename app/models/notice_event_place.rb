class NoticeEventPlace < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :country, :county, :event_type, :eventdate, :eventtime, :notice_display_id, :postcode
  belongs_to :notice_display
end
