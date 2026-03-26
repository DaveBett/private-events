class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @my_events = current_user.created_events.all
    @attended = current_user.attended_events.all
  end
end
