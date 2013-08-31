class History < ActiveRecord::Base
  attr_accessible :body, :orbituarysite_id, :title
  belongs_to :orbituarysite  
end
