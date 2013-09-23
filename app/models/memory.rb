class Memory < ActiveRecord::Base
  attr_accessible :body, :orbituarysite_id, :user_id, :title
  belongs_to :orbituarysite
  belongs_to :user
end
