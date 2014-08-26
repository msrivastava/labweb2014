gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
# gem "twitter-bootstrap-rails"
# or you can install from latest build;
gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'

bin/bundle install
bin/rails generate bootstrap:install less
bin/rails generate bootstrap:themed products -f