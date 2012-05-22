require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe PalindromeSolver do
  it "should convert bases properly" do
    PalindromeSolver.convert_to_base(95, 2).join.should == "1011111"
  end
  it "should give proper base responses" do
    PalindromeSolver.lowest_base_of(21).should == 2
    PalindromeSolver.lowest_base_of(1).should == 2
    PalindromeSolver.lowest_base_of(4).should == 3
  end
end