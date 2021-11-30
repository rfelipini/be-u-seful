class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :volunteer
  has_one :student

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :role, presence: true
end
