require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "MotorcycleRacingSolver" do
  it "should give proper ranks" do
    @race = Race.new(4)
    @race.cyclist_by_id(0).velocity = 2
    @race.cyclist_by_id(0).position = 100
    @race.cyclist_by_id(1).velocity = 3
    @race.cyclist_by_id(1).position = 50
    @race.cyclist_by_id(2).velocity = 4
    @race.cyclist_by_id(2).position = 60
    @race.cyclist_by_id(3).velocity = 5
    @race.cyclist_by_id(3).position = 1
    @race.id_at_rank_at_time(1, 1).should == 1
    @race.id_at_rank_at_time(2, 50).should == 4
    @race.id_at_rank_at_time(4, 60).should == 1
    @race.id_at_rank_at_time(1, 100).should == 4
  end
end