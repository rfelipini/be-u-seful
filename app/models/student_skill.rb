class StudentSkill < ApplicationRecord
  belongs_to :student
  has_many :skills, through: :student_skills
end
