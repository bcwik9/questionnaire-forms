# Read about factories at https://github.com/thoughtbot/factory_girl
FactoryGirl.define do
  factory :questionnaire do
    name "Questionnaire title"

    after(:create) do |questionnaire, evaluator|
      create_list(:question, 1, questionnaire: questionnaire)
    end
  end
end
