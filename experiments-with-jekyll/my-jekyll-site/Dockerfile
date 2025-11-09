# Use the official Jekyll image
FROM jekyll/jekyll:latest

# Set working directory
WORKDIR /srv/jekyll

# Copy Gemfile and install dependencies
COPY Gemfile ./
# COPY jekyll/Gemfile.lock ./Gemfile.lock
RUN bundle install

# Copy Jekyll site files
# COPY jekyll/ ./jekyll/

# Expose Jekyll server port
EXPOSE 4000

# Start the Jekyll server
CMD ["jekyll", "serve", "--host", "0.0.0.0"]
