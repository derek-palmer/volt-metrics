#!/bin/bash
python /home/tools/acquireData.py --verbose
jupyter notebook --no-browser --ip=* --allow-root