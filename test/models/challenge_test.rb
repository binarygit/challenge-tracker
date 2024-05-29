require "test_helper"

class ChallengeTest < ActiveSupport::TestCase
  def test_creates_challenge_days_after_creation
    challenge = Challenge.create(name: "new challenge", start_date: Date.new(2024, 05, 01), end_date: Date.new(2024, 05, 31))
    assert_equal 31, challenge.challenge_days.count
  end
end
