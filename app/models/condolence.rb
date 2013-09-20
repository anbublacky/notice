class Condolence < ActiveRecord::Base
  attr_accessible :address, :country, :flower, :name, :orbituarysite_id, :share_content, :user_id
  belongs_to :orbituarysite
  belongs_to :user
end
