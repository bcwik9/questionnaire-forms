# Read about factories at https://github.com/thoughtbot/factory_girl
FactoryGirl.define do
  factory :question do
    content "Question content"
    answer "correct answer"
    questionnaire
  end
end
