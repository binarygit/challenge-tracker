class Challenges::MonthsController < ApplicationController
  def index
    @challenge = Challenge.find_by id: params[:challenge_id]
    @months = @challenge.challenge_days.pluck(:date).map {|d| d.month}.uniq
  end

  def show
    @challenge = Challenge.find_by id: params[:challenge_id]
    @challenge_days = @challenge.challenge_days.with_attached_images.group_by {|cd| cd.date.month}[params[:month].to_i]
  end
end
