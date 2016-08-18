class Channel < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true

  scope :by_team, -> (team) { where(team_id: team.id) }

  belongs_to :team
  has_many :messages

  has_many :user_channels
  has_many :users, through: :user_channels
end
