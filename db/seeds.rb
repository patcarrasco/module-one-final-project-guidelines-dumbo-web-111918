require 'pry'
require 'restclient'

# require './config/environment'

def question_array_from_api
  response_string = RestClient.get('https://opentdb.com/api.php?amount=50')
  response_hash = JSON.parse(response_string)
  return response_hash["results"]
end

# QUESTION:

def convert_key_to_symbol(hash)
  hash.collect do |k, v|
    k
    binding.pry
  end
end

binding.pry
