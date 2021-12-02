class Student < ApplicationRecord
  belongs_to :user
  has_many :fields_of_interests
  has_many :portfolio_types
  has_many :languages
  has_many :videos
  has_many :professional_experiences
  has_many :courses
  has_many :student_skills
  has_many :certificates
  validates :full_name, :age, presence: true
end
