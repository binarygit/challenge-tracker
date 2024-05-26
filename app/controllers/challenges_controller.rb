class ChallengesController < ApplicationController
  def index
    redirect_to challenge_path(Challenge.first)
  end

  def show
    @challenge = Challenge.first
  end
end
