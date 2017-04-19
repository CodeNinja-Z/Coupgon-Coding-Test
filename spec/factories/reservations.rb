FactoryGirl.define do
  factory :reservation do
    sequence(:tee_time, (9..16).cycle) { |time| "2017-04-21 #{time}".to_datetime }
    user
    golf_club
  end
end
