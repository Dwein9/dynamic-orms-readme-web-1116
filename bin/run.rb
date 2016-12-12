require 'sqlite3'

require_relative "../lib/song.rb"
require_relative "../config/environment.rb"


song = Song.new(name: "Hello", album: "25")
# puts "song name: " + song.name
# puts "song album: " + song.album
song.save

song1 = Song.new(name: "Supersonic", album: "Definitely, Maybe")
song1.save

p Song.find_by_name("Supersonic")

DB[:conn].execute("SELECT * FROM songs")
