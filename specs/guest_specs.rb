require( 'minitest/autorun' )
require( 'minitest/rg')
require_relative( '../guest.rb' )


class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Ally", 4, 30)
  end

  def can_create_guest_booking_name
    assert_equal(Guest, @guest)
  end

  def test_person_name
    assert_equal("Ally", @guest.name())
  end

  def test_guest_party_size
    assert_equal(4, @guest.party_size())
  end

  def test_guest_cash
    assert_equal(30, @guest.cash())
  end





  

 







end