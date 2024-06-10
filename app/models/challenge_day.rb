class ChallengeDay < ApplicationRecord
  belongs_to :challenge
  enum :status, [ :neutral, :success, :failure ], default: :neutral
end
