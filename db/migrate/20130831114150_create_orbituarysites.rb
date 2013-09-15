class CreateOrbituarysites < ActiveRecord::Migration
  def change
    create_table :orbituarysites do |t|
      t.string :salutation
      t.string :name
      t.string :orbiturerimage
      t.datetime :dob
      t.datetime :dod
      t.string :birth_place
      t.string :living_place
      t.string :death_place
      t.string :latitude
      t.string :longitude
      t.integer :user_id

      t.timestamps
    end
  end
end
