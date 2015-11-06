class AddUsernameToUser < ActiveRecord::Migration
  def change # anything inside of this method, is translated to SQL code and modified the database(currently, SQLite)
  add_column :users, :username, :string # add a new column to table "user", called "username" and of type "string"
  add_index :users, :username, unique: true # first, index usernames for quick (rapid) lookup. second, ensure usernames are ALWAYS unique.
  end
end
