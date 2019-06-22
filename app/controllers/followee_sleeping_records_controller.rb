class FolloweeSleepingRecordsController < ApplicationController

  def index
    @sleep_records = SleepRecord.where(user: user.followees).order(sleep_duration: :desc)
    json_response(@sleep_records)
  end

private

  def user
    @user ||= User.find(params[:id])
  end
end
