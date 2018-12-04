require 'rest-client'
require 'json'
require 'pry'

def url_stuff(artist, song)
  response_string = RestClient.get("https://orion.apiseeds.com/api/music/lyric/#{artist}/#{song}?apikey=qfHynq3D4fw0wIzA34pyQLG43gicJIWKjJrJtIDC55W1QAr0FVeQ6P7a0roqFgKE")
  binding.pry
end

binding.pry
