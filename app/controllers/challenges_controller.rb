class ChallengesController < ApplicationController
  before_action :user

  def index
    @challenges = user.challenges
  end

  private

  def user
    User.find_by_id session[:user_id]
  end
end
