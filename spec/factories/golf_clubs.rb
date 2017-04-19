FactoryGirl.define do
  factory :golf_club do
    name "Carlos's Golf Club"
    user_id 1

    trait :seed_development_database do
      transient do
        users_count 5
        reservations_count 4
      end

      after(:create) do |golf_club, evaluator|
        create_list(:user, 1, role: 'Owner', golf_club: golf_club)
        create_list(:user, evaluator.users_count, golf_club: golf_club)
        create_list(:reservation, evaluator.reservations_count, golf_club: golf_club, user: User.find(rand(2..evaluator.users_count)))
      end
    end

    trait :with_users_and_reservations do
      transient do
        users_count 5
        reservations_count 4
      end

      after(:create) do |golf_club, evaluator|
        create_list(:user, 1, role: 'Owner', golf_club: golf_club)
        create_list(:user, evaluator.users_count, golf_club: golf_club)
        create_list(:reservation, evaluator.reservations_count, golf_club: golf_club)
      end
    end

    trait :with_owner do
      after(:create) do |golf_club, evaluator|
        create_list(:user, 1, role: 'Owner', golf_club: golf_club)
      end
    end
  end
end
