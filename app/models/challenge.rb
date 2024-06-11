class Challenge < ApplicationRecord
  belongs_to :user
  has_many :challenge_days

  after_create :create_challenge_days

  private

  def create_challenge_days
    (start_date..end_date).each do |date|
      ChallengeDay.create(date: date, challenge: self)
    end
  end
end
