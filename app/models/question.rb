class Question < ActiveRecord::Base
  validates :content, presence: true

  belongs_to :questionnaire
  has_many :answers
  validates_presence_of :questionnaire
end
