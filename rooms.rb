class Room

  attr_reader :songs, :guest

  def initialize(songs, guest)
    @songs = songs
    @guest = guest
   
  end

  def add_guest(guest)
    @guest << guest
  end

  def remove_guest(guest)
    @guest.delete(guest)
  end

  def add_song(song)
    @songs << song
  end

  def room_capacity(guest)
    @room2 << guest
  end


end

