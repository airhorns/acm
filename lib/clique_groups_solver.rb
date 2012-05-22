class Network
  class FriendNotFoundError < StandardError; end
  def initialize(size)
    @friends = []
    size.times do |i|
      @friends << Friend.new(self, i, [])
    end
  end
  
  def friend(id)
    raise FriendNotFoundError if @friends[id] == nil 
    @friends[id]
  end
  
  def grouped?
    @friends.each do |friend|
      return false if friend.friends.first == nil
      # Pick two critical friends to form the center of the groups. Since the groups must be exhasutively connected, two
      # critical friends will do for checking if a different friend is in one of the groups.
      a = friend.friends.first
      b = nil
      
      # Find the first friend that isnt in group A
      friend.friends[1..-1].each do |their_friend|
        if ! their_friend.friends_with?(a)
          b = their_friend
        end
      end
      
      return false if b == nil?
      
      # For each friend that isn't B or A, make sure they are friends with one of the two
      (friend.friends - [a] - [b]).each do |other_friend|
        return false if (other_friend.friends_with?(a) || other_friend.friends_with?(b)) == false
      end
    end
    return true
  end
  
  def to_s
    str = ""
    @friends.each do |f|
      ids = f.friends.map {|x| x.id }.join(" ")
      str += "#{f.id}: #{ids} \n"
    end
    str
  end
end

class Friend
  attr_accessor :friends, :id

  def initialize(registry, id, friends)
    @registry = registry
    @id = id
    @friends = []
  end
  
  def friends=(ids)
    @friends = []
    ids.each do |id|
      @friends.push(@registry.friend(id))
    end
  end
  
  def friends_with?(a)
    @friends.include?(a)
  end
end