# Use a base image with Ruby and Jekyll pre-installed
FROM jekyll/jekyll:latest

# Set the working directory
WORKDIR /app

# Clone the Jekyll project from the GitHub repository
RUN git clone https://github.com/phattd15/polarity-cf.github.io.git .

RUN git checkout master

USER root 
RUN chmod 777 Gemfile.lock

# Install dependencies
RUN bundle install
# Build the Jekyll project
# RUN jekyll build

# Set the output directory
# RUN mv _site /var/www/html

# Expose port (optional)
# EXPOSE 80

# Run a web server to serve the static files
# CMD ["jekyll", "serve", "--host=0.0.0.0", "--port=80"]
