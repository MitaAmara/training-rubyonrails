class RenameUserId < ActiveRecord::Migration[5.2]
  def change
  	rename_column :comments, :user_is, :username
  	change_column :comments, :username, :string
  end
end
