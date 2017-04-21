require_relative('room')

class Lobby

  attr_reader :room
  
  def initialize
    @room = []
  end


  def add_room_to_lobby(a_room)
    @room << a_room
  end


  def add_group_of_rooms(group)
    for room in group
      @room << room
    end
  end


  def remove_room_from_lobby(a_room)
    for i in @room
      if i == a_room
        @room.delete(i)
      end
    end
  end






end











