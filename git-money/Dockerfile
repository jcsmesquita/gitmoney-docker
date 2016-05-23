FROM python:3.4.4

# Install node
RUN apt-get -y update
RUN apt-get install -y curl git vim

# Install nodejs and npm
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get install -y nodejs

# Upgrade pip
RUN pip install --upgrade pip

# Clone bitgo-express and git-money
WORKDIR /root
RUN git clone https://github.com/jcsmesquita/git-money
RUN git clone https://github.com/BitGo/bitgo-express.git

# Install bitgo-express
WORKDIR /root/bitgo-express
RUN npm install

# Install git-money
WORKDIR /root/git-money
RUN pip3 install -r requirements.txt
RUN pip3 install --editable .
