class SleepRecordsController < ApplicationController
  def index
    @sleep_records = user.sleep_records.order(created_at: :asc)
    json_response(@sleep_records)
  end

private

  def user
    @user ||= User.find(params[:id])
  end
end
