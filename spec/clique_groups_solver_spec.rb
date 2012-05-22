require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Clique Groups Solver" do
  it "should give true" do
    @network = Network.new(3)
    @network.friend(0).friends = [1,2]
    @network.friend(1).friends = [0]
    @network.friend(2).friends = [0]
    @network.grouped?.should == true
  end
  
  it "should give false" do
    @network = Network.new(4)
    @network.friend(0).friends = [1,2,3]
    @network.friend(1).friends = [0]
    @network.friend(2).friends = [0]
    @network.friend(3).friends = [0]    
    @network.grouped?.should == false
  end
end