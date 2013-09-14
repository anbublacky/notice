class Orbituarysite < ActiveRecord::Base
  attr_accessible :birth_place, :death_place, :dob, :dod, :name, :living_place, :orbiturerimage, :salutation, :user_id, :name
  belongs_to :user
  mount_uploader :orbiturerimage, OrbiturerUploader
  has_many :history
  has_many :notice_display
  has_many :condolences
  has_many :memories
  has_many :orbiturer_share_images
  
  
end
