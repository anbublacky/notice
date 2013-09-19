class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :name, :string
    add_column :users, :location, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :remote_userimage_url, :string
    add_column :users, :urls, :string
    add_column :users, :oauth_token, :string
    add_column :users, :oauth_secret, :string
  end
end
