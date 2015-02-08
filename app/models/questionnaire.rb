class Questionnaire < ActiveRecord::Base
  has_many :questions, :dependent => :destroy
  has_many :responses, :dependent => :destroy

  accepts_nested_attributes_for :questions
end
