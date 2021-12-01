class Student < ApplicationRecord
  belongs_to :user
  has_many :fields_of_interests
  has_many :professional_experiences
  has_many :courses
  validates :full_name, :age, presence: true
end
