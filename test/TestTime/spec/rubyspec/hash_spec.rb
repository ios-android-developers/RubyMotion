# require File.expand_path('../../../spec_helper', __FILE__)
# require File.expand_path('../fixtures/methods', __FILE__)

describe "Time#hash" do
  it "returns a Fixnum" do
    Time.at(100).hash.kind_of?(Fixnum).should == true
  end

  it "is stable" do
    Time.at(1234).hash.should == Time.at(1234).hash
  end
end
