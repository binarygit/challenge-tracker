# frozen_string_literal: true

class ChallengeDay::ChallengeDayFailComponent < ViewComponent::Base
  def initialize(challenge_day:)
    @challenge_day = challenge_day
  end
end
