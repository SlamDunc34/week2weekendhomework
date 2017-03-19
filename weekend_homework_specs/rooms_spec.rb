require ('minitest/autorun')
require_relative('../rooms.rb')
require_relative('../guests.rb')
require_relative('../songs.rb')

class RoomsTest < MiniTest::Test

  def setup()
    @song1 = Song.new("The_Sword", "Horned_Goddess")
    @song2 = Song.new("Sepultura", "Propaganda")
    @songs = [@song1, @song2]
    @song3 = Song.new("Soundgarden", "Rusty_Cage")
    @guest =[]
    @room1 = Room.new(@songs, @guest)
    @room2 = Room.new(@songs, @guest)

  end

  def test_guest_added_to_room()
    @room1.add_guest(@guest)
    assert_equal(1, @room1.guest.count)
  end

  def test_guest_removed_from_room()
    @room1.remove_guest(@guest)
    assert_equal(0, @room1.guest.count)
  end

  def test_song_added()
    @room1.add_song(@song3)
    assert_equal(3, @songs.count)
  end


end