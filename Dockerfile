FROM mono:5.2
RUN apt-get update
RUN apt-get install -y wget unzip
RUN wget http://chromedriver.storage.googleapis.com/2.33/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip
RUN ln -s $PWD/chromedriver /usr/local/bin/chromedriver
