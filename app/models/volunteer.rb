class Volunteer < ApplicationRecord
    belongs_to :user    
    validates :full_name, :github, :background, presence: true
    has_one_attached :photo_volunteer
end
