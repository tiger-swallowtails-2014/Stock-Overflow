class Response < ActiveRecord::Base
  attr_accessible :content, :response_context_type, :response_context_id

  belongs_to :user
  belongs_to :response_context, polymorphic: true
end