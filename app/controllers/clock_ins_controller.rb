class ClockInsController < ApplicationController
  def create
    @clock_in = user.clock.clock_in
    json_response(@clock_in, :created)
  end

private

  def user
    @user ||= User.find(params[:id])
  end
end
