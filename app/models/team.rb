class Team < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true

  has_many :channels

  has_many :user_teams
  has_many :users, through: :user_teams
end
