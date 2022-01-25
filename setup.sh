#!/bin/bash
echo 'Giving permissions'
for i in $(seq 3)
do 
  sleep 0.25
  printf '.'
done
echo ''
sudo chmod +x media-downloader.sh music-downloader.py music-playlist.py video-downloader.py video-playlist.py
echo 'Program configured'
