class ChallengeDaysController < ApplicationController
  def update
    @challenge_day = ChallengeDay.find_by id: params[:id]
    if @challenge_day
      @challenge_day.images.attach(params.dig(:challenge_day, :photo))
      @challenge_day.update challenge_day_params
    end
  end

  private

  def challenge_day_params
    params.require(:challenge_day).permit(:status, :note)
  end
end
