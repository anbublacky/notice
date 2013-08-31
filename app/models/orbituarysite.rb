class Orbituarysite < ActiveRecord::Base
  attr_accessible :birth_place, :death_place, :dob, :dod, :name, :living_place, :orbiturerimage, :salutation, :user_id
  belongs_to :user
  mount_uploader :orbiturerimage, OrbiturerUploader
  has_one :history
  has_one :notice_display
  has_many :condolences
  has_many :memories
  has_many :orbiturer_share_images
  
end
