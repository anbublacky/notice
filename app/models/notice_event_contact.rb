class NoticeEventContact < ActiveRecord::Base
  attr_accessible :country, :mobile, :name, :notice_display_id, :telephone, :_destroy
  belongs_to :notice_display
 
end
