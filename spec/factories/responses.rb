# Read about factories at https://github.com/thoughtbot/factory_girl
FactoryGirl.define do
  factory :response do
    user Faker::Name.first_name
    answers { create_list(:answer,1) }
  end
end