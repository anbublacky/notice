class CreateCondolences < ActiveRecord::Migration
  def change
    create_table :condolences do |t|
      t.string :name
      t.string :country
      t.string :address
      t.string :flower
      t.text :share_content
      t.integer :orbituarysite_id
      t.integer :user_id

      t.timestamps
    end
  end
end
