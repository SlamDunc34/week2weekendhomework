require ('minitest/autorun')
require_relative('../guests.rb')
require_relative('../rooms.rb')

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Dougie")
    
  end

  def test_has_name
    guest = @guest.name
    assert_equal("Dougie", guest)
  end



  # def test_guest_added_to_room()
  #   @rooms.add_guest()
  #   assert_equal("Dougie", @guests)
  # end

  # def test_guest_removed_from_room()
  #   @rooms.remove_guest()
  #   assert_equal("Dougie", @guests)
  # end



end