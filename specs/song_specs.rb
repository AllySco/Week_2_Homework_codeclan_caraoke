require( 'minitest/autorun' )
require( 'minitest/rg')
require_relative( '../song.rb')

class TestSong < MiniTest::Test

  def setup
    @song = Song.new(1, "The Gambler", "Kenny Rogers")
  end


  def test_song_can_be_created
    assert_equal(Song, @song.class)
  end


  def test_get_track_id
    assert_equal(1, @song.track_id)
  end

  def test_get_track_name
    assert_equal("The Gambler", @song.track_name)
  end

  def test_get_artist
    assert_equal("Kenny Rogers", @song.artist)
  end




end