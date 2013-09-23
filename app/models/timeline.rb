class Timeline < ActiveRecord::Base
  attr_accessible :content, :enddate, :headline, :media, :mediacaption, :mediacredit, :startdate, :orbituarysite_id, :image
  belongs_to :orbituarysite
end
