require ('minitest/autorun')
require_relative('../songs.rb')

class TestSongs < MiniTest::Test

  def setup
    @song1 = Song.new("The_Sword", "Horned_Goddess")
    @song2 = Song.new("Sepultura", "Propaganda")
    @songs = [@song1, @song2]
  end

  def test_artist
    assert_equal("The_Sword", @song1.song_artist)
  end

  def test_song
    assert_equal("Propaganda", @song2.song_name)
  end

end