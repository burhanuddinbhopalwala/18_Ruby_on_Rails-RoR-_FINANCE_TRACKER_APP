# rails generate migration add_first_and_last_name_to_users
class AddFirstAndLastNameToUsers < ActiveRecord::Migration[5.2]
  def up()
    add_column :users, :first_name, :string 
    add_column :users, :last_name, :string
  end

  def down()
    remove_column :users, :first_name
    remove_column :users, :last_name 
  end 
end
