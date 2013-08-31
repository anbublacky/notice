class NoticeDisplay < ActiveRecord::Base
  attr_accessible :message, :notice_type, :orbituarysite_id, :posted_by
  belongs_to :orbituarysite
  has_many :notice_event_contacts
  has_many :notice_event_places
end
