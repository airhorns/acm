require File.join(File.dirname(__FILE__), "lib", "acm.rb")

cases = gets.strip.to_i
$races = []
cases.times do |num|
  cyclists = gets.strip.to_i
  race = Race.new(cyclists)
  $races.push(race)
  cyclists.times do |id|
    velocity, position = gets.strip.split(" ")
    c = race.cyclist_by_id(id)
    c.velocity = velocity
    c.position = position
  end
  time_queries = gets.strip.to_i
  time_queries.times do |q|
    time, rank = gets.strip.split(" ")
    puts race.id_at_rank_at_time(rank, time)
  end
end