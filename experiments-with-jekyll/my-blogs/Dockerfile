# Use the official Jekyll image as the base image
FROM jekyll/jekyll:4

# Install Node.js and npm for Tailwind CSS processing (Alpine Linux)
RUN apk add --no-cache nodejs npm

# Set the working directory inside the container
WORKDIR /srv/jekyll

# Copy package files for npm dependencies
COPY package*.json ./

# Install npm dependencies (Tailwind CSS, PostCSS, etc.)
RUN npm install

# Copy the Gemfile (but not Gemfile.lock - let bundle generate it)
COPY Gemfile ./

# Fix permissions and install bundler and Ruby gems
RUN chown -R jekyll:jekyll /srv/jekyll && \
    chmod -R 755 /srv/jekyll && \
    gem install bundler && \
    bundle install

# Expose port 4000 for the Jekyll server
EXPOSE 4000

# Set the default command to build CSS and serve the Jekyll site
CMD npm run build:css && jekyll serve --host 0.0.0.0 --force_polling

