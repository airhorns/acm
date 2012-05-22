require File.join(File.dirname(__FILE__), "lib", "acm.rb")

cases = gets.strip.to_i
$exits = []
cases.times do |num|
  exit = gets.strip
  $exits << exit
end

$exits.each do |exit|
  ways = (ElectricFenceSolver.new(exit).solve % 3163)
  puts ways
end