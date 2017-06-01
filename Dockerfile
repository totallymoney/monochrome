FROM mono:4.8
RUN apt-get update
RUN apt-get install -y wget unzip
RUN wget http://chromedriver.storage.googleapis.com/2.21/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip
RUN ln -s $PWD/chromedriver /usr/local/bin/chromedriver
COPY .paket-cache ./canopytests/paket-cache
