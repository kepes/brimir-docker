#!/bin/ruby
exit if User.count != 0
agent = User.new(
  email:'agent@getbrimir.com',
  password:'tmppwd',
  password_confirmation:'tmppwd'
)
agent.agent = true
agent.save!
