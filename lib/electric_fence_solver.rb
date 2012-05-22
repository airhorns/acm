class ElectricFenceSolver
  def initialize(exit)
    @exit = exit.to_i
  end

  def solve
    self.find_routes(0, 0) + 1
  end
  
  def find_routes(x, y)
    count = 0
    both_options = true 

    if self.valid_move?(x+1, y)
      count += self.find_routes(x+1, y)
    else
      both_options = false
    end

    if self.valid_move?(x, y+1)
      count += self.find_routes(x, y+1)
    else
      both_options = false
    end
    count += 1 if both_options
    count
  end
  
  def valid_move?(x, y)
    return false if x > @exit || y > @exit
    return false if x > y
    return true
  end
end