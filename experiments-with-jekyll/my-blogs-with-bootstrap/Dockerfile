# Use the official Jekyll image as the base image
FROM jekyll/jekyll:4

# Set the working directory inside the container
WORKDIR /srv/jekyll

# Copy the Gemfile (but not Gemfile.lock - let bundle generate it)
COPY Gemfile ./

# Fix permissions and install bundler and Ruby gems
RUN chown -R jekyll:jekyll /srv/jekyll && \
    chmod -R 755 /srv/jekyll && \
    gem install bundler && \
    bundle install

# Expose port 4000 for the Jekyll server
EXPOSE 4000

# Set the default command to serve the Jekyll site
CMD jekyll serve --host 0.0.0.0 --force_polling

