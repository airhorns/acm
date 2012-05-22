class Race
  attr_accessor :cyclists
  def initialize(cyclists)
    @cyclists = []
    cyclists.times do |i|
      @cyclists.push(Cyclist.new(i))
    end
  end
  
  def id_at_rank_at_time(rank, time)
    ranks = @cyclists.sort_by {|c| 1.0 / c.position_at_time(time).to_f }
    ranks[rank.to_i - 1].id + 1
  end
  
  def cyclist_by_id(id)
    @cyclists[id]
  end
end

class Cyclist
  attr_accessor :velocity, :position, :id
  def initialize(id)
    @id = id
  end
  
  def position_at_time(time)
    @position.to_i + (time.to_i * @velocity.to_i)
  end
end