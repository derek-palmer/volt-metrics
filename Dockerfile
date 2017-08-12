FROM  python:2.7

# Install dependencies
RUN apt-get update && apt-get install -y \
python-pip \
python-dev

# Expose 8888 for Jupyter notebook
EXPOSE 8888

# Add requirements lock file
ADD requirements.txt requirements.txt

# Install our python dependencies via pip
RUN pip install -r requirements.txt

# Add jupyter config file
RUN mkdir -p -m 700 /root/.jupyter/
COPY ./jupyter/jupyter_notebook_config.py /root/.jupyter

# Set jupyter theme
RUN jupyter-theme -cellw 1400 -fs 10 -nfs 11 -tfs 11 -T -N -t oceans16

# Set the timezone.
RUN echo "America/New_York" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

# Add in our working data
RUN mkdir /home/tools
COPY jupyter /home/tools
COPY acquireData.py /home/tools
COPY credentials.py /home/tools
WORKDIR /home/tools

RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
