class Response < ActiveRecord::Base
  belongs_to :questionnaire
  has_many :answers, :dependent => :destroy
  accepts_nested_attributes_for :answers

  attr_accessor :user
end
