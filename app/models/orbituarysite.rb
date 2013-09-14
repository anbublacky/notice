class Orbituarysite < ActiveRecord::Base
  attr_accessible :birth_place, :death_place, :dob, :dod, :name, :living_place, :orbiturerimage, :salutation, :user_id
  belongs_to :user
  mount_uploader :orbiturerimage, OrbiturerUploader
  has_many :history
  has_many :notice_display
  has_many :condolences
  has_many :memories
  has_many :orbiturer_share_images
   geocoded_by :address
 acts_as_gmappable :process_geocoding => false
 def gmaps4rails_address
#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
  "#{self.address1}, #{self.address2}, #{self.city}, #{self.county}, #{self.country}" 
end
after_validation :geocode
def address
  [address1,address2,city,county, country].compact.join(', ')
end
end