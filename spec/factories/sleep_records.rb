FactoryBot.define do
  factory :sleep_record do
    sleep_time { rand(10..20).hours.ago }
    wake_time { rand(1..8).hours.ago }
    user { nil }
  end
end
