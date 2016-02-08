# we'll use an existent image which already have ruby installed
FROM ruby:2.3.0
# creating our app folder
RUN mkdir /myapp
# move to this folder
WORKDIR /myapp
# move the Gemfile to our app's root folder
ADD myapp/Gemfile /myapp/Gemfile
# move the Gemfile.lock too
ADD myapp/Gemfile.lock /myapp/Gemfile.lock
# updates the system gem
RUN gem update --system
# run bundle install for production
RUN bundle install --without development test
# copy my code's folder to myapp
ADD myapp/. /myapp
