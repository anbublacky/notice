class Orbituarysite < ActiveRecord::Base
  attr_accessible :birth_place, :death_place, :dob, :dod, :name, :living_place, :orbiturerimage, :salutation, :user_id, :name
  attr_accessible :address1, :address2, :city, :country, :county, :event_type, :eventdate, :eventtime, :notice_display_id, :postcode,:latitude,:longitude
  belongs_to :user
  mount_uploader :orbiturerimage, OrbiturerUploader
  has_many :histories
  has_many :notice_displays
  has_many :condolences
  has_many :memories
  has_many :orbiturer_share_images
  
  has_many :timelines
end
