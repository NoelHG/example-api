class FollowRelationshipsController < ApplicationController

  def create
    follower.follow(user)
    json_response(@user, :created)
  end

  def destroy
    follower.unfollow(user)
    head :no_content
  end

private

  def follower_params
    params.require(:user)
  end

  def follower
    @follower ||= User.find(follower_params)
  end

  def user
    @user ||= User.find(params[:id])
  end
end
