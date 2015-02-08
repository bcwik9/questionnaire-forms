class Answer < ActiveRecord::Base
  belongs_to :response
  has_one :question
end
