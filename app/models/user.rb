class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :user_teams
  has_many :teams, through: :user_teams

  has_many :user_channels
  has_many :channels, through: :user_channels
end
