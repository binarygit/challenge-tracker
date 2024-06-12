# frozen_string_literal: true

class ChallengeDay::GenericComponent < ViewComponent::Base
  def initialize(challenge_day:, klass:)
    @challenge_day = challenge_day
    @klass = klass
  end
end
