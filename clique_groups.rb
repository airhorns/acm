require File.join(File.dirname(__FILE__), "lib", "acm.rb")

cases = gets.strip.to_i
$networks = []
cases.times do |num|
  people = gets.strip.to_i
  n = Network.new(people)
  $networks << n
  people.times do |i|
    friend_ids = []
    gets.strip.split(" ").each_with_index do |bool, i| 
      friend_ids.push(i) if bool == "1"
    end
    x = n.friend(i)
    x.friends = friend_ids
  end 
end

$networks.each do |n|
  puts (n.grouped? ? "True" : "False")
end
