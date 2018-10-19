FROM python:2.7

# Install dependencies
RUN apt-get update && apt-get install -y \
    python-pip \
    python-dev

# Add jupyter config file
RUN mkdir -p -m 700 /root/.jupyter/
COPY volt-metrics/volume/jupyter_notebook_config.py /root/.jupyter

# Set the timezone
RUN echo "America/New_York" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

# Add in our working data
RUN mkdir /home/tools
COPY client_id.json /home/tools

# Add python dependencies
COPY volt-metrics/requirements.txt /home/tools
WORKDIR /home/tools

# Install python dependencies via pip
RUN pip install -r requirements.txt

# Set jupyter theme
RUN jupyter-theme -cellw 1400 -fs 10 -nfs 11 -tfs 11 -T -N -t oceans16

# Expose ports for jupyter
EXPOSE 8888
