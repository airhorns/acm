class PalindromeSolver
  def self.lowest_base_of(number)
    (2..10).each do |x|
      num_arr = self.convert_to_base(number, x)
      return x if self.is_palindrome?(num_arr)
    end
    return false
  end
  
  def self.convert_to_base(number, base)
    new_number = []
    until number == 0
      x = number % base
      new_number.push(x)
      number = (number / base).floor
    end
    new_number.reverse
  end
  
  def self.is_palindrome?(arr)
    arr == arr.reverse
  end
end