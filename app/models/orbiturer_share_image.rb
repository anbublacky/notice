class OrbiturerShareImage < ActiveRecord::Base
  attr_accessible :orbituarysite_id, :orbiturer_other_images, :title, :description
  belongs_to :orbituarysite
  mount_uploader :orbiturer_other_images, OrbiturerShareImagesUploader
end
