class AddFrameToOrbituarysite < ActiveRecord::Migration
  def change
    add_column :orbituarysites, :frame, :string
    add_column :orbituarysites, :slogan, :string
  end
end
