class Response < ActiveRecord::Base
  validates :user, presence: true

  belongs_to :questionnaire
  has_many :answers, :dependent => :destroy

  accepts_nested_attributes_for :answers
end
