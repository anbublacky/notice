class NoticeDisplay < ActiveRecord::Base
  attr_accessible :message, :notice_type, :orbituarysite_id, :posted_by, :notice_event_places_attributes, :notice_event_contacts_attributes
  belongs_to :orbituarysite
  has_many :notice_event_contacts, :dependent => :destroy
  has_many :notice_event_places, :dependent => :destroy
  accepts_nested_attributes_for :notice_event_contacts, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :notice_event_places, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

end
