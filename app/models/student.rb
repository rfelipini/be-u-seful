class Student < ApplicationRecord
  belongs_to :user
  has_many :fields_of_interests
  has_many :portfolio_types
  validates :full_name, :age, presence: true
end
