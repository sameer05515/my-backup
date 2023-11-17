# Use the official Jekyll image as the base image
FROM jekyll/jekyll:latest

# Set the working directory inside the container
WORKDIR /srv/jekyll

# Copy the Gemfile and Gemfile.lock (if present) into the container
COPY Gemfile ./

# Install bundler and the missing 'webrick' gem
RUN gem install bundler && \
    bundle install && \
    gem install webrick

# Expose port 4000 for the Jekyll server
EXPOSE 4000

# Set the default command to build and serve the Jekyll site
CMD ["jekyll", "serve", "--host", "0.0.0.0"]
