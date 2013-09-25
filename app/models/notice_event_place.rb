class NoticeEventPlace < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :country, :county, :event_type, :eventdate, :eventtime, :notice_display_id, :postcode,:latitude,:longitude, :_destroy
  belongs_to :notice_display
  geocoded_by :address
  acts_as_gmappable :process_geocoding => false
  
  def gmaps4rails_address
    #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "#{self.address1}, #{self.address2}, #{self.city}, #{self.postcode}, #{self.county}, #{self.country}" 
  end

  after_validation :geocode
  def address
    [address1,address2,city,county, postcode, country].compact.join(', ')
  end

end
