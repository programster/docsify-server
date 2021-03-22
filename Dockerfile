FROM ubuntu:20.04

# Create a docsify user
RUN useradd \
  --shell /bin/bash  \
   docsify

# Update
RUN apt-get update && apt-get dist-upgrade -y

# Install cron to act as our foreground process
RUN apt-get install -y supervisor

# Add our supervisor config to the container
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Install node
RUN apt-get install curl -y \
  && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
  && apt-get install -y nodejs


# Install docsify CLI utility
RUN npm install -g docsify-cli@latest

ENV DEBUG 0
ENV PORT 80
EXPOSE 80

# Use docsify user's home directory as our working area
WORKDIR /home/docsify

# Add script for fixing permission mapping
ADD permission-fix.sh /root/permission-fix.sh

# Add our startup script that runs on startp.
ADD startup.sh /root/startup.sh

# Finish with calling our startup script.
CMD ["/bin/bash", "/root/startup.sh"]
