class ChallengesController < ApplicationController
  before_action :user

  def index
    @challenges = Challenge.all
  end

  private

  def user
    User.find_by_id session[:user_id]
  end
end
