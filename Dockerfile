from heroku/cedar

# Install bundler
RUN gem install bundler -v 1.15.1 --no-ri --no-rdoc
ENV PATH /app/user/bin:/app/heroku/ruby/bundle/ruby/2.2.0/bin:$PATH
ENV BUNDLE_APP_CONFIG /app/heroku/ruby/.bundle/config

add	.	/buildpack
expose	5000
env	PORT 5000
