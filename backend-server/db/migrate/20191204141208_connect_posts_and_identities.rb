class ConnectPostsAndIdentities < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :identity_id, :integer
  end
end
