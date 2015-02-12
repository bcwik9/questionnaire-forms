# Read about factories at https://github.com/thoughtbot/factory_girl
FactoryGirl.define do
  factory :response do
    user Faker::Name.first_name

    after(:create) do |response, evaluator|
      create_list(:answer, 1, response: response)
    end
  end
end
