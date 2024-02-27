#!/bin/sh
sudo apt install python3
pip install --upgrade pip
pip install mkdocs-awesome-pages-plugin==2.9.2
pip install mkdocs-git-revision-date-localized-plugin==1.2.4
pip install mkdocs-material==9.5.9
pip install mkdocs-minify-plugin==0.8.0
pip install mkdocs-redirects==1.2.1
echo "start in background with:"
echo "nohup echo "mkdocs serve -a ipadres:8000" &"
