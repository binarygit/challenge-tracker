class ChallengesController < ApplicationController
  def index
    redirect_to challenge_path(Challenge.first)
  end

  def show
    @challenge = Challenge.find_by id: params[:id]
    @challenge_days = @challenge.challenge_days
  end
end
