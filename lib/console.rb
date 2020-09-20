require "pry"
require_relative "artist.rb"
require_relative "mp3_importer.rb"
require_relative "song.rb"

drake = Artist.new("Drake")

hotline_bling = Song.new("hotline_bling")
hotline_bling.artist = drake

#print drake.songs

print Artist.find_or_create_by_name("Shakira").name



#binding.pry

