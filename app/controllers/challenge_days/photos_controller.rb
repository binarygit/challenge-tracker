class ChallengeDays::PhotosController < ApplicationController
  def show
    @challenge_day = ChallengeDay.find_by(id: params[:challenge_day_id])
  end
end
