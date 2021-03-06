class NoticeDisplay < ActiveRecord::Base
  attr_accessible :message, :notice_type, :orbituarysite_id, :posted_by, :notice_event_places_attributes, :notice_event_contacts_attributes, :address1, :address2, :city, :event_type, :_delete
  belongs_to :orbituarysite
  has_many :notice_event_contacts, :dependent => :destroy
  has_many :notice_event_places, :dependent => :destroy
  accepts_nested_attributes_for :notice_event_contacts, :reject_if => lambda { |a| a[:postcode].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :notice_event_places, :reject_if => lambda { |a| a[:postcode].blank? }, :allow_destroy => true

end
