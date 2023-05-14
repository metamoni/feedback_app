class Feedback < ApplicationRecord
  validates_presence_of :content, :status
  enum :status, [:open, :in_review, :actioned, :closed], suffix: true, default: :open
end
