class Memory < ActiveRecord::Base
  attr_accessible :body, :orbituarysite_id
  belongs_to :orbituarysite
end
