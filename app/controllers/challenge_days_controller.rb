class ChallengeDaysController < ApplicationController
  def update
    @challenge_day = ChallengeDay.find_by id: params[:id]
    if @challenge_day
      @challenge_day.update photo: params[:photo].read, status: params[:status]
    end
  end
end
