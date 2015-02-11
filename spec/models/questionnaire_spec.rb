require 'spec_helper'

describe Questionnaire do

  let(:response) {
    FactoryGirl.create :questionnaire
  }
  
  let(:valid_attributes) {
    response_attrs = FactoryGirl.attributes_for :questionnaire
    return response_attrs
  }

  it "should have a valid factory" do
    response.should be_valid
  end

  
  it "should have at least one question" do
    expect(response.questions.size).to be > 0
  end

  it "should have a name" do
    response.name.should be_true
    #expect(response.name).to be ne nil
  end

end
