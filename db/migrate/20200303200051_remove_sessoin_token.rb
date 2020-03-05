class RemoveSessoinToken < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :sessoin_token
    add_column :users, :sessoin_token, :string
  end
end
