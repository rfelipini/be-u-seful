class PortfolioType < ApplicationRecord
  belongs_to :student
  has_one_attached :photo
end
