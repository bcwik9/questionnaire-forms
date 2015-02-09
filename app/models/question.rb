class Question < ActiveRecord::Base
  validates :content, presence: true

  belongs_to :questionnaire
  has_many :answers
end
