require 'spec_helper'

describe Response do

  let(:response) {
    FactoryGirl.create :response
  }

  let(:valid_attributes) {
    response_attrs = FactoryGirl.attributes_for :response
    return response_attrs
  }

  it "should have at least one answer" do
    expect(response.answers.size).to be > 0
  end

  it "should have a user who submitted it" do
    expect(response.user).to eq(valid_attributes[:user]) 
  end
end
