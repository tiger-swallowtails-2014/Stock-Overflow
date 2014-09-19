class User < ActiveRecord::Base
  attr_accessible :username, :email, :password

  has_many :questions
  has_many :answers
  has_many :responses
end