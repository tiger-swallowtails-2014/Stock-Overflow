# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(username:"Will", email:"william@gmail.com", password:"123")
# user2 = User.create(username:"Michael", email:"michael@gmail.com", password:"123")
# user3 = User.create(username:"Matt", email:"matt@gmail.com", password:"123")

question1 = Question.create(title: "What is that?", content: "Can you explain this")

answer1 = Answer.create(content: "Yes")

response1 = Response.create(content: "that sucks", response_context_type: "Question")
response2 = Response.create(content: "thats good", response_context_type: "Answer")

vote1 = Vote.create(vote_context_type: "Question")
vote2 = Vote.create(vote_context_type: "Answer")


user1.questions << question1
user1.answers << answer1

question1.answers << answer1

question1.responses << response1
answer1.responses << response2

question1.votes << vote1
answer1.votes << vote2





