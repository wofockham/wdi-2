FactoryGirl.define do

  factory :user do |f|
    # Replace this fake data with Faker
    f.sequence(:name) { |n| "test#{n}" }
    f.email { |u| "#{u.name}@example.com" }

    factory :user_with_tweets do
      after(:create) do |u, evaluator|
        FactoryGirl.create_list(:tweet, Random.rand(10..500), :user => u)
      end
    end
  end

  factory :tweet do |f|
    f.sequence(:post) { Faker::Lorem.sentence }
  end

end
