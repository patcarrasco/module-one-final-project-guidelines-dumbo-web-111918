# require 'pry'
# require 'restclient'
# require './lib/api_communicator.rb'
# require_relative 'config/environment'


# formatted_questions


easy1 = "https://opentdb.com/api.php?amount=50&difficulty=easy&type=multiple"
easy2 = "https://opentdb.com/api.php?amount=50&difficulty=easy&type=multiple"
moderate1 = "https://opentdb.com/api.php?amount=50&difficulty=medium&type=multiple"
moderate2 = "https://opentdb.com/api.php?amount=50&difficulty=medium&type=multiple"
hard = "https://opentdb.com/api.php?amount=50&difficulty=hard&type=multiple"
hard2 = "https://opentdb.com/api.php?amount=50&difficulty=hard&type=multiple"

questions = [easy1, easy2, moderate1, moderate2, hard, hard2]

formatted_questions = convert_key_to_symbol(questions)

puts "In SEEDS"

binding.pry

#
# def create_many_questions(array)
#   array.each do |v|
#     Question.new(v)
#   end
# end
#
# create_many_questions(formatted_questions)
