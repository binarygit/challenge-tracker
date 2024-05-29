# frozen_string_literal: true

class Challenges::MonthComponent < ViewComponent::Base
  def initialize(month:, challenge:)
    @month = month
    @challenge = challenge
  end
end
