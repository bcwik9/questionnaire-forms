require 'spec_helper'

describe Questionnaire do

  let(:response) {
    FactoryGirl.create :questionnaire
  }
  
  let(:valid_attributes) {
    response_attrs = FactoryGirl.attributes_for :questionnaire
    return response_attrs
  }
  
  it "should have at least one question" do
    pending 'add functionality!'
  end

  it "should have a name" do
    pending 'add functionality!'
  end

end
