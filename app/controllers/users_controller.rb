class UsersController < ApplicationController
  before_action :authenticate_user!

  def settings
    @lifetime_member = current_user.lifetime_member?
  end
end
