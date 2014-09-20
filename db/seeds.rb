def create_users
  user1 = User.create(username:"Will", email:"william@gmail.com", password:"123")
  user2 = User.create(username:"Michael", email:"michael@gmail.com", password:"123")
  user3 = User.create(username:"Matt", email:"matt@gmail.com", password:"123")
end

def create_questions
  question1 = Question.create(title: "1st", content: "Can you explain this")
  question2 = Question.create(title: "2nd", content: "Can you explain this")
  question3 = Question.create(title: "3rd", content: "Can you explain this")
  question4 = Question.create(title: "4th", content: "Can you explain this")
  question5 = Question.create(title: "5th", content: "Can you explain this")
  question6 = Question.create(title: "6th", content: "Can you explain this")
  question7 = Question.create(title: "7th", content: "Can you explain this")
  question8 = Question.create(title: "8th", content: "Can you explain this")
  question9 = Question.create(title: "9th", content: "Can you explain this")
  question10 = Question.create(title: "10th", content: "Can you explain this")
  question11 = Question.create(title: "11st", content: "Can you explain this")
  question12 = Question.create(title: "12nd", content: "Can you explain this")
end

def create_answers
  answer = Answer.create(content: "Yes")
end

def create_responses
  response1 = Response.create(content: "that sucks", response_context_type: "Question",response_context_id: "12")
  response2 = Response.create(content: "thats good", response_context_type: "Question",response_context_id: "3")
  response3 = Response.create(content: "that sucks", response_context_type: "Question",response_context_id: "3")
  response4 = Response.create(content: "thats good", response_context_type: "Question",response_context_id: "11")
  response5 = Response.create(content: "that sucks", response_context_type: "Question",response_context_id: "11")
  response6 = Response.create(content: "thats good", response_context_type: "Question",response_context_id: "3")
end

def create_question_votes
  vote1 = Vote.create(vote_context_type: "Question", vote_context_id: "12")
  vote2 = Vote.create(vote_context_type: "Question", vote_context_id: "12")
  vote3 = Vote.create(vote_context_type: "Question", vote_context_id: "11")
  vote4 = Vote.create(vote_context_type: "Question", vote_context_id: "11")
  vote5 = Vote.create(vote_context_type: "Question", vote_context_id: "1")
  vote6 = Vote.create(vote_context_type: "Question", vote_context_id: "2")
end

def create_answer_votes
  vote7 = Vote.create(vote_context_type: "Answer")
end

# def vote_question
#   # six = [Vote.find(1), Vote.find(2), Vote.find(3), Vote.find(4), Vote.find(5), Vote.find(6)]
#   # five = [Vote.find(1), Vote.find(2), Vote.find(3), Vote.find(4), Vote.find(5), Vote.find(6)]
#   # four = [Vote.find(1), Vote.find(2), Vote.find(3), Vote.find(4), Vote.find(5), Vote.find(6)]
#   # three = [Vote.find(1), Vote.find(2), Vote.find(3)]
#   # two = [Vote.find(1), Vote.find(2),]

#   Question.find(1).votes.push(Vote.find(1), Vote.find(2))
#   Question.find(2).votes.push(Vote.find(1), Vote.find(2), Vote.find(3))
#   Question.find(3).votes.push(Vote.find(1), Vote.find(2), Vote.find(3))
#   Question.find(4).votes.push(Vote.find(1), Vote.find(2), Vote.find(3), Vote.find(4), Vote.find(5), Vote.find(6))
#   Question.find(5).votes.push(Vote.find(1))
#   Question.find(6).votes.push(Vote.find(1))
#   Question.find(7).votes.push(Vote.find(1))
#   Question.find(8).votes.push(Vote.find(1), Vote.find(2), Vote.find(3), Vote.find(4), Vote.find(5), Vote.find(6))
#   Question.find(9).votes.push(Vote.find(1), Vote.find(2), Vote.find(3), Vote.find(4), Vote.find(5), Vote.find(6))
#   Question.find(10).votes.push(Vote.find(1), Vote.find(2), Vote.find(3), Vote.find(4), Vote.find(5), Vote.find(6))
#   Question.find(11).votes.push(Vote.find(1), Vote.find(2), Vote.find(3), Vote.find(4), Vote.find(5), Vote.find(6))
#   Question.find(12).votes.push(Vote.find(1), Vote.find(2), Vote.find(3), Vote.find(4), Vote.find(5), Vote.find(6))
# end

# def respond_question
#   # six = [Response.find(1), Response.find(2), Response.find(3), Response.find(4), Response.find(5), Response.find(6)]
#   # five = [Response.find(1), Response.find(2), Response.find(3), Response.find(4), Response.find(5), Response.find(6)]
#   # four = [Response.find(1), Response.find(2), Response.find(3), Response.find(4), Response.find(5), Response.find(6)]
#   # three = [Response.find(1), Response.find(2), Response.find(3)]
#   # two = [Response.find(1), Response.find(2),]

#   Question.find(1).responses.push(Response.find(1), Response.find(2), Response.find(3))
#   Question.find(2).responses.push(Response.find(1), Response.find(2), Response.find(3))
#   Question.find(3).responses.push(Response.find(1), Response.find(2), Response.find(3), Response.find(4))
#   Question.find(4).responses.push(Response.find(1), Response.find(2), Response.find(3), Response.find(4))
#   Question.find(5).responses.push(Response.find(1))
#   Question.find(6).responses.push(Response.find(1))
#   Question.find(7).responses.push(Response.find(1))
#   Question.find(8).responses.push(Response.find(1), Response.find(2), Response.find(3), Response.find(4), Response.find(5))
#   Question.find(9).responses.push(Response.find(1), Response.find(2), Response.find(3), Response.find(4), Response.find(5), Response.find(6))
#   Question.find(10).responses.push(Response.find(1), Response.find(2), Response.find(3), Response.find(4), Response.find(5))
#   Question.find(11).responses.push(Response.find(1), Response.find(2))
#   Question.find(12).responses.push(Response.find(1), Response.find(2))
# end

create_users
create_questions
create_answers
create_responses
create_question_votes
create_answer_votes

# vote_question
# respond_question
# user1.questions << question1
# user.answers << answer

# question.answers << answer

# question.responses << response1
# answer.responses << response2

# answer1.votes << vote13





