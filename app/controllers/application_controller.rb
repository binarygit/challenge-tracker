class ApplicationController < ActionController::Base

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      unless (user = User.find_by_name(username.downcase)) && (password == 'muuji')
        render plain: 'Authorization Failed', status: :unauthorized
        return
      end
      session[:user_id] = user.id
    end
  end
end
