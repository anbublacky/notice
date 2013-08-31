class OrbiturerShareImage < ActiveRecord::Base
  attr_accessible :orbituarysite_id, :orbiturer_other_images
  belongs_to :orbituarysite
end
