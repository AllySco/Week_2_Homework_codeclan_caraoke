require( 'minitest/autorun' )
require( 'minitest/rg')
require_relative( '../lobby.rb' )
require_relative( '../room.rb' )
require_relative( '../guest.rb' )


class TestLobby < MiniTest::Test

  def setup

    @room1 = Room.new(1, 5, 15)
    @room2 = Room.new(2, 8, 25)
    @room3 = Room.new(3, 10, 30)

    @room = [@room1, @room2, @room3]

    @lobby = Lobby.new()
  end

  def test_add_room_to_lobby
    @lobby.add_room_to_lobby(@room)
    assert_equal(1, @lobby.room.length)
  end

  def test_add_group_of_rooms
    @lobby.add_group_of_rooms(@room)
    assert_equal(3, @lobby.room.length)
  end

  def test_remove_room_from_lobby
    @lobby.add_group_of_rooms(@room)
    @lobby.remove_room_from_lobby(@room3)
    assert_equal(2, @lobby.room.length)
  end







end