class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  before_action :set_current_user, if: :user_signed_in?

  def set_current_user
    @email = current_user.email
  end
end
