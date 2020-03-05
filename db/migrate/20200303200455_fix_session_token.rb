class FixSessionToken < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :sessoin_token
    add_column :users, :session_token, :string, null:false
  end
end
