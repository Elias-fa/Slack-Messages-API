class Message < ApplicationRecord
  validates :channel_id, presence: true
  validates :user_id, presence: true
  validates :body, presence: true

  belongs_to :channel
end
