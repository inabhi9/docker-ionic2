FROM webratio/android-sdk:latest

# Preparing the OS
RUN apt-get update
RUN apt-get install -y curl

# Install Nodejs & npm
RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN apt-get install -y nodejs
RUN npm update -g npm

# Install ionic and cordova
RUN npm install -g ionic@beta cordova@5

# Install android sdk 22. Required by cordova
RUN echo 'y' | android update sdk --no-ui --filter android-22
