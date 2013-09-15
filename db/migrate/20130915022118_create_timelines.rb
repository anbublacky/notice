class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.datetime :startdate
      t.datetime :enddate
      t.string :headline
      t.text :content
      t.string :media
      t.string :mediacredit
      t.string :mediacaption
      t.string :orbituarysite_id
      
      t.timestamps
    end
  end
end
