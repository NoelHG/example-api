require 'rails_helper'

RSpec.describe Clock, type: :model do
  it { should validate_presence_of(:sleep_time) }
  it { should validate_presence_of(:wake_time) }
  it { should belong_to(:user) }
end
