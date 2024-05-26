# frozen_string_literal: true

class ChallengeDayComponent < ViewComponent::Base
  def initialize(challenge_day:)
    @challenge_day = challenge_day
  end

  private
  
  def date
    @challenge_day.date
  end
end
