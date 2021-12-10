class Student < ApplicationRecord
  belongs_to :user
  has_many :fields_of_interests
  has_many :portfolio_types
  has_many :languages
  has_many :videos
  has_many :professional_experiences
  has_many :courses
  has_many :student_skills
  has_many :skills, through: :student_skills
  has_many :certificates
  has_one_attached :photo
  has_one_attached :photo_portfolio
  has_one_attached :photo_certificates
  has_one_attached :video
  validates :full_name, :age, presence: true
end
