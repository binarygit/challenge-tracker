class ChallengeDaysController < ApplicationController
  def update
    @challenge_day = ChallengeDay.find_by id: params[:id]
    if @challenge_day
      @challenge_day.images.attach(params[:photo])
      @challenge_day.update status: params[:status], note: params[:note]
    end
  end
end
