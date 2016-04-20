class AddUsernameToUsers < ActiveRecord::Migration
  def change # anything inside of this method, is translated to SQL code and modified in the database (currently, SQLite)
    add_column :users, :username, :string # add a new column to "users", called "username" and type "string"
    add_index :users, :username, unique: true # first, index usernames for quick (rapid) lookup. Second, ensure ussernames are ALWAYS unique.
  end
end
