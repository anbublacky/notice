class CreateMemories < ActiveRecord::Migration
  def change
    create_table :memories do |t|
      t.text :body
      t.integer :orbituarysite_id

      t.timestamps
    end
  end
end
