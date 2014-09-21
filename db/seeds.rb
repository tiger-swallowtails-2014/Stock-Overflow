def create_users
  User.create(username:"Will", email:"william@gmail.com", password:"123")
  User.create(username:"Michael", email:"michael@gmail.com", password:"123")
  User.create(username:"Matt", email:"matt@gmail.com", password:"123")
end

def create_questions
  Question.create(title: "What is an IPO?", content: "Can you anybody explain what ")
  Question.create(title: "What are the main ways to make money with shares?", content: "Can you explain this")
  Question.create(title: "What is a mutual fund?", content: "Can you explain this")
  Question.create(title: "What's the difference between a stock exchange and a futures exchange", content: "Can you explain this")
  Question.create(title: "Why do people buy shares?", content: "Can you explain this")
  Question.create(title: "Does a shareholder own the company?", content: "Can you explain this")
  Question.create(title: "What does Dow Jones do?", content: "Can you explain this")
  Question.create(title: "What is Nasdaq?", content: "Can you explain this")
  Question.create(title: "Will somebody always buy my shares when I sell them?", content: "Can you explain this")
  Question.create(title: "What is a margin account?", content: "Can you explain this")
  Question.create(title: "What does short selling mean?", content: "Can you explain this")
  Question.create(title: "What is a market crash?", content: "Can you explain this")
end

def create_answers
  answer = Answer.create(content: "Yes")
end

def create_question_responses
  50.times do
    response = Response.create(content: "that sucks", response_context_type: "Question",response_context_id: rand(1..12))
  end
end

def create_question_votes
  50.times do
    Vote.create(vote_context_type: "Question",vote_context_id: rand(1..12))
  end
end

def create_answer_responses
  50.times do
    Response.create(content: "that sucks", response_context_type: "Answer",response_context_id: rand(1..12))
  end
end

def create_answer_votes
  50.times do
    Vote.create(vote_context_type: "Answer",vote_context_id: rand(1..12))
  end
end

create_users
create_questions
create_answers
create_question_responses
create_question_votes
create_answer_responses
create_answer_votes


# user1.questions << question1
# user.answers << answer





