class AddVolunteerToChatroom < ActiveRecord::Migration[6.1]
  def change
    add_reference :chatrooms, :volunteer, null: false, foreign_key: true
  end
end
