#!/bin/bash

# Run script to get data, add CSVs to data folder
python acquireData.py

# Build docker container and start Jupyter notebook
docker-compose build && docker-compose up
