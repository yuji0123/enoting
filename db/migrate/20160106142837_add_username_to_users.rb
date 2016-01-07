class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :string

    # execute "ALTER TABLE users ADD PRIMARY KEY (user_name);"
  end
end
