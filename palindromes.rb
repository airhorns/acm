require File.join(File.dirname(__FILE__), "lib", "acm.rb")

cases = gets.strip.to_i
cases.times do |num|
  num = gets.strip.to_i
  puts PalindromeSolver.lowest_base_of(num)
end