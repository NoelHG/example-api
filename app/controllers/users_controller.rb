class UsersController < ApplicationController

  def index
    @users = User.all
    json_response(@users)
  end

  def create
    @user = User.new(user_params)
    @user.clock = Clock.new
    @user.save!
    json_response(@user, :created)
  end

private

  def user_params
    params.permit(:name)
  end
end
