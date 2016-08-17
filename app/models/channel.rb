class Channel < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true

  belongs_to :team
  has_many :messages

  has_many :user_channels
  has_many :users, through: :user_channels
end
