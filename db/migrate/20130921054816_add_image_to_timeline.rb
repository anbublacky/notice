class AddImageToTimeline < ActiveRecord::Migration
  def change
    add_column :timelines, :image, :string
  end
end
