class ChallengeDay < ApplicationRecord
  has_many_attached :images
  belongs_to :challenge
  enum :status, [ :neutral, :success, :fail ], default: :neutral
end
