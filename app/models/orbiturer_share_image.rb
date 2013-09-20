class OrbiturerShareImage < ActiveRecord::Base
  attr_accessible :orbituarysite_id, :orbiturer_other_images, :title, :description, :user_id
  belongs_to :orbituarysite
  belongs_to :user
  mount_uploader :orbiturer_other_images, OrbiturerShareImagesUploader
end
