class RemoveNameFromChatroom < ActiveRecord::Migration[6.1]
  def change
    remove_column :chatrooms, :name, :string
  end
end
