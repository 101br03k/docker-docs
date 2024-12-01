#!/bin/sh
sudo apt install python3
pip install --upgrade pip
pip install -r requirements.txt  --break-system-packages
echo "start in background with:"
echo "nohup echo "mkdocs serve -a ipadres:8000" &"
