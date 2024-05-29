class Challenges::MonthsController < ApplicationController
  def index
    @challenge = Challenge.find_by id: params[:challenge_id]
    @months = @challenge.challenge_days.pluck(:date).map {|d| d.month}.uniq
  end

  def show
    @challenge = Challenge.find_by id: params[:challenge_id]
    @challenge_days = @challenge.challenge_days
  end
end
