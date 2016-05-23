###
# Custom installation of NodeJS using Ubuntu 14.04 as a base image

FROM ubuntu:14.04
MAINTAINER João Mesquita <jcsmesquita@gmail.com>

# Update system packages
RUN apt-get update
RUN apt-get install -y curl git

# Install nodejs and npm
RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN apt-get install -y nodejs

# Make ssh dir and create known_hosts
RUN mkdir /root/.ssh/
RUN touch /root/.ssh/known_hosts

# Add github's key

# Clone bitgo-express and git-money
WORKDIR /root
RUN git clone https://github.com/BitGo/bitgo-express.git
RUN git clone https://github.com/21hackers/git-money

# Install bitgo-express
WORKDIR /root/bitgo-express
RUN npm install

# Install git-money
# WORKDIR /root/git-money
# RUN npm install



# RUN sudo ln -s /usr/bin/nodejs /usr/bin/node
#
# # Required by Node installer (n)
# RUN apt-get install -y curl
#
# # Install NodeJS 4.2.4
# RUN apt-get install -y npm nodejs
# RUN npm install -g n
# RUN n 5.6.0
#
# # Install npm global packages
# RUN npm install -g nodemon
#
# # Install project dependencies and run
# WORKDIR /code
