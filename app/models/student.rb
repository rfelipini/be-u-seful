class Student < ApplicationRecord
  belongs_to :user
    validates :full_name, :age, presence: true
end
