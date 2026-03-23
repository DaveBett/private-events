class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @events = @user.created_events.all
  end
end
