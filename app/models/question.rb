class Question < ActiveRecord::Base
  belongs_to :questionnaire
  has_many :answers

  validates_presence_of :content
end
