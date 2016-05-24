#!/bin/bash
set -e
export SECRET_KEY_BASE=`rake secret`
bundle exec unicorn -c $UNICORN_CONFIG -E $RAILS_ENV -D
bundle exec rake db:migrate
bundle exec rails c < db/add_first_agent.rb
tail -f $RAILS_LOG
