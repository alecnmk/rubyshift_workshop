require 'spec_helper'

describe Subway do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    Subway.create!(@valid_attributes)
  end
end
