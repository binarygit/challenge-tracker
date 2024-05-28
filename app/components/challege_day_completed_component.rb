# frozen_string_literal: true

class ChallegeDayCompletedComponent < ViewComponent::Base
  def initialize(challenge_day:)
    @challenge_day = challenge_day
  end
end
