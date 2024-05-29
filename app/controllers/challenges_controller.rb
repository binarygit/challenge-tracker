class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.all
  end

  def show
    @challenge = Challenge.find_by id: params[:id]
    @challenge_days = @challenge.challenge_days
  end
end
