class ChallengeDay < ApplicationRecord
  belongs_to :challenge
  enum :status, [ :neutral, :success, :fail ], default: :neutral
end
