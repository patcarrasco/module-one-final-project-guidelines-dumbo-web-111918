easy1 = "https://opentdb.com/api.php?amount=50&difficulty=easy&type=multiple"
easy2 = "https://opentdb.com/api.php?amount=50&difficulty=easy&type=multiple"
moderate1 = "https://opentdb.com/api.php?amount=50&difficulty=medium&type=multiple"
moderate2 = "https://opentdb.com/api.php?amount=50&difficulty=medium&type=multiple"
hard = "https://opentdb.com/api.php?amount=50&difficulty=hard&type=multiple"
hard2 = "https://opentdb.com/api.php?amount=50&difficulty=hard&type=multiple"

questions = [easy1, easy2, moderate1, moderate2, hard, hard2]


def question_array_from_api(api_address)
  response_string = RestClient.get(api_address)
  response_hash = JSON.parse(response_string)
  return response_hash["results"]
end

def question_array_merger(questions)
 final_array = questions.map { |address| question_array_from_api(address) }
 final_array.flatten!
 final_array
 # binding.pry
end

# GET QUESTIONS

def convert_key_to_symbol(questions)
  array = question_array_merger(questions)
  question_list = []
  array.each do |question|
    new = {}
    question.each do |k, v|
      new[k.to_sym] = v
      if k.to_sym == :incorrect_answers
        new[:option1] = v[0]
        new[:option2] = v[1] if v.size > 1
        new[:option3] = v[2] if v.size > 1
        new.delete(k.to_sym)
      end
    end
    question_list << new
  end
  question_list
end

formatted_questions = convert_key_to_symbol(questions)

# def create_many_questions(array)
#   array.each do |v|
#     Question.new(v)
#   end
# end

# create_many_questions(formatted_questions)

# binding.pry
