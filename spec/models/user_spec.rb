require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:sleep_records).dependent(:destroy) }
  it { should have_one(:clock).dependent(:destroy) }
end
