class Condolence < ActiveRecord::Base
  attr_accessible :address, :country, :flower, :name, :orbituarysite_id, :share_content
  belongs_to :orbituarysite
end
