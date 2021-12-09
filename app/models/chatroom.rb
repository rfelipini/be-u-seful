class Chatroom < ApplicationRecord
  has_many :messages
  belongs_to :student
  belongs_to :volunteer
end
