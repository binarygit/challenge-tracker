# frozen_string_literal: true

class ChallengeDay::ChallengeDayFailComponent < ChallengeDay::GenericComponent
  def initialize(challenge_day:)
    super(challenge_day:, klass: 'challenge-day-card--fail')
  end
end
