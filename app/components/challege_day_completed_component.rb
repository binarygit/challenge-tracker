# frozen_string_literal: true

class ChallegeDayCompletedComponent < ChallengeDay::GenericComponent
  def initialize(challenge_day:)
    super(challenge_day:, klass: 'challenge-day-card--complete')
  end
end
