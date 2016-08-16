class User < ApplicationRecord
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :user_teams
  has_many :teams, through: :user_teams
end
