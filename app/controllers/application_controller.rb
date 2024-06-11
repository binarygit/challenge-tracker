class ApplicationController < ActionController::Base
  before_action :authenticate

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      (user = User.find_by_name(username.downcase)) && (password == 'muuji')
      session[:user_id] = user.id
    end
  end
end
