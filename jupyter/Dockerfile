FROM python:3

# Install dependencies
RUN apt-get update && apt-get install -y \
python-pip \
python-dev \
wget \
xvfb \
unzip

# Expose 8888 for Jupyter notebook
EXPOSE 8888

# Set up the Chrome PPA
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list

# Install chrome
# Update the package list and install chrome
RUN apt-get update -y
RUN apt-get install -y google-chrome-stable

# Set up Chromedriver Environment variables
ENV CHROMEDRIVER_VERSION 2.31
ENV CHROMEDRIVER_DIR /chromedriver
RUN mkdir $CHROMEDRIVER_DIR

# Download and install Chromedriver
RUN wget -q --continue -P $CHROMEDRIVER_DIR "http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip"
RUN unzip $CHROMEDRIVER_DIR/chromedriver* -d $CHROMEDRIVER_DIR

# Put Chromedriver into the PATH
ENV PATH $CHROMEDRIVER_DIR:$PATH

# Add python dependencies
ADD requirements.txt requirements.txt

# Install python dependencies via pip
RUN pip install -r requirements.txt

# Add jupyter config file
RUN mkdir -p -m 700 /root/.jupyter/
COPY volume/jupyter_notebook_config.py /root/.jupyter

# Set jupyter theme
RUN jupyter-theme -cellw 1400 -fs 10 -nfs 11 -tfs 11 -T -N -t oceans16

# Set the timezone
RUN echo "America/New_York" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

# Add in our working data
RUN mkdir /home/tools
COPY volume /home/tools
COPY volume/acquireData.py /home/tools
COPY volume/credentials.py /home/tools
WORKDIR /home/tools

ENTRYPOINT ["./start.sh"]
