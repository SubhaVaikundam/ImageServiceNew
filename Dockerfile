FROM rails:latest
# Define where our application will live inside the image
RUN mkdir -p /usr/src/app
# Set our working directory inside the image
WORKDIR /usr/src/app

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
# Prevent bundler warnings; ensure that the bundler version executed is >= that which created Gemfile.lock
RUN gem install bundler --no-ri --no-rdoc

# Finish establishing our Ruby enviornment
RUN bundle install --without production test

# Copy the Rails application into place
COPY . /usr/src/app

ENV RACK_ENV development

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
