require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe ElectricFenceSolver do
  it "should give 1 for 1" do
    ElectricFenceSolver.new(1).solve.should == 1
  end
  it "should give 2 for 2" do
    ElectricFenceSolver.new(2).solve.should == 2
  end
  it "should give 5 for 3" do
    ElectricFenceSolver.new(3).solve.should == 5
  end
  it "should give 14 for 4" do
    ElectricFenceSolver.new(4).solve.should == 14
  end
end