class Volunteer < ApplicationRecord
    belongs_to :user    
    validates :full_name, :github, :background, presence: true
end
