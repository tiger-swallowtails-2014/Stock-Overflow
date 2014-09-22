def create_users
  User.create(username:"Will", email:"william@gmail.com", password:"123")
  User.create(username:"Michael", email:"michael@gmail.com", password:"123")
  User.create(username:"Matt", email:"matt@gmail.com", password:"123")
end

def create_questions

  User.first.questions << Question.create(title: "What is market crash?", content: "Can you explain this")
  User.first.questions << Question.create(title: "What is a share?", content: "Can you explain this")
  User.first.questions << Question.create(title: "Can somebody explain insider trading?", content: "Can you explain this")
  User.first.questions << Question.create(title: "What is the difference between bid price and ask price?", content: "Can you explain this")
  User.find(2).questions << Question.create(title: "Will somebody always buy my stocks when I sell them?", content: "Can you explain this")
  User.find(2).questions << Question.create(title: "How do I know which stocks to buy?", content: "Can you explain this")
  User.find(2).questions << Question.create(title: "What is mutual fund?", content: "Can you explain this")
  User.find(2).questions << Question.create(title: "What is an IPO?", content: "Can you explain this")
  User.last.questions << Question.create(title: "What is the difference between a stock exchange and futures exchange?", content: "Can you explain this")
  User.last.questions << Question.create(title: "What's the difference between a long and short position?", content: "What is the difference between a long and a short position in the market? I don't understand the difference at all. Can you explain this")
  User.last.questions << Question.create(title: "Why are the trading area called pits?", content: "Can you explain this")
  User.last.questions << Question.create(title: "What is a broker?", content: "Can you explain this")

end

# def create_answers
#   answer = Answer.create(content: "Yes")
# end

def create_question_responses
  10.times do
    response = Response.create(content: "that sucks", response_context_type: "Question", response_context_id: rand(1..12))
    User.find(rand(3)+1).responses << response
  end
end

def create_question_votes
  10.times do
    Vote.create(vote_context_type: "Question", vote_context_id: rand(1..12))
  end
end

def create_question_answers
  10.times do
    answer = Answer.create(content: "something")
    User.find(rand(3)+1).answers << answer
    Question.find(rand(12)+1).answers << answer
  end
end

def create_answer_responses
  10.times do
    response = Response.create(content: "that sucks", response_context_type: "Answer", response_context_id: rand(1..12))
    User.find(rand(3)+1).responses << response
  end
end

def create_answer_votes
  10.times do
    Vote.create(vote_context_type: "Answer", vote_context_id: rand(1..12))
  end
end

create_users
create_questions
# create_answers
create_question_responses
create_question_votes
create_question_answers
create_answer_responses
create_answer_votes


# user1.questions << question1
# user.answers << answer





