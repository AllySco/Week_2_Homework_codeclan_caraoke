require 'pry'
require_relative('guest')
class Room

  attr_reader :number, :capacity, :price
  attr_accessor :playlist, :guests_in_room

  def initialize(number, capacity, price)
    @number = number
    @capacity = capacity
    @price = price
    @playlist = []
    @guests_in_room = []
  end


  def add_song_to_playlist(song)
    @playlist << song
  end

  def remove_last_song_from_playlist
    @playlist.pop()
  end

  def add_guest_to_room(guest)
    @guests_in_room << guest
  end


  def remove_guest_from_room(guest)
    @guests_in_room.delete(guest)
  end
    

 










end