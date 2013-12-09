FactoryGirl.define do

  factory :fruit do
    sequence(:name) { |n| "Fruit Number #{n}" }
    country_of_origin "GB"
    age "3 days"
    color "red"
    description "Some consider this strange fruit delicious."
    stair
  end

  factory :stair do
  end

end
