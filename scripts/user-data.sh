#!/bin/bash
cd /home/ubuntu
echo "<h1>My first aws project to demonstrate apps in private subnet</h1>" > index.html
python3 -m http.server 8000 &
