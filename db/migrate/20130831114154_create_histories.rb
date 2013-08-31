class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.string :title
      t.text :body
      t.integer :orbituarysite_id

      t.timestamps
    end
  end
end
