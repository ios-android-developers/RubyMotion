# require File.expand_path('../../../spec_helper', __FILE__)
# require File.expand_path('../fixtures/methods', __FILE__)
# require File.expand_path('../shared/day', __FILE__)

# describe "Time#day" do
#   it_behaves_like(:time_day, :day)
# end
describe "Time#day" do
  before do
    @method = :day
  end

  it "returns the day of the month (1..n) for a local Time" do
    with_timezone("CET", 1) do
      Time.local(1970, 1, 1).send(@method).should == 1
    end
  end

  it "returns the day of the month for a UTC Time" do
    Time.utc(1970, 1, 1).send(@method).should == 1
  end

  ruby_version_is "1.9" do
    it "returns the day of the month for a Time with a fixed offset" do
      Time.new(2012, 1, 1, 0, 0, 0, -3600).send(@method).should == 1
    end
  end
end
