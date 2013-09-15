class Orbituarysite < ActiveRecord::Base
  attr_accessible :birth_place, :death_place, :dob, :dod, :name, :living_place, :orbiturerimage, :salutation, :user_id, :name
  attr_accessible :address1, :address2, :city, :country, :county, :event_type, :eventdate, :eventtime, :notice_display_id, :postcode,:latitude,:longitude
  belongs_to :user
  mount_uploader :orbiturerimage, OrbiturerUploader
  has_many :history
  has_many :notice_display
  has_many :condolences
  has_many :memories
  has_many :orbiturer_share_images
  has_many :notice_event_contacts, :dependent => :destroy
  has_many :notice_event_places, :dependent => :destroy
  accepts_nested_attributes_for :notice_event_contacts, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :notice_event_places, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  has_many :timelines
end
