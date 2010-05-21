require 'spec_helper'

describe Train do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    Train.create!(@valid_attributes)
  end
end
