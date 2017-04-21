require( 'minitest/autorun' )
require( 'minitest/rg')
require_relative( '../room.rb')
require_relative('../song')
require_relative('../guest')

class TestRoom < MiniTest::Test

  def setup
    @room = Room.new(1, 5, 15)
    @song1 = Song.new(1, "The Gambler", "Kenny Rogers")
    @guest = Guest.new("Ally", 4, 30)
  end

  def test_can_add_song_to_playlist
    @room.add_song_to_playlist(@song1)
    assert_equal(1, @room.playlist.count)
  end

  def test_can_remove_song_from_playlist
    song2 = Song.new(2, "7 Days", "Craig David")
    @room.add_song_to_playlist(@song1)
    @room.add_song_to_playlist(song2)
    assert_equal(2, @room.playlist.count)
    @room.remove_last_song_from_playlist
    assert_equal(1, @room.playlist.count)
  end

  def test_add_guest_to_room
    @room.add_guest_to_room(@guest)
    assert_equal(1, @room.guests_in_room.count)
  end


  def test_remove_guests_from_room_by_name
    @room.add_guest_to_room(@guest)
    @room.remove_guest_from_room(@guest)
    assert_equal(0, @room.guests_in_room.count)
  end












end