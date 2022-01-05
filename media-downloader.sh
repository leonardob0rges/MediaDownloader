#!/bin/bash
echo ''
sleep 0.5
printf '          '
echo -e '\033[1;4;37mMedia Downloader\033[0m'
sleep 0.5
printf '   '
echo ''
echo -e '\033[1;37m    This program download musics\033[0m'
echo  -e '\033[1;37m      and videos from Youtube.\033[0m'
echo ''
printf '     '
echo -e '\033[1;37mCoded by: Leonardo Borges\033[0m'
printf '   '
for i in $(seq 30)
do
  printf '\033[1;31m=\033[0m'
  sleep 0.025
done
echo ''
echo ''
sleep 0.25; printf '    \033[1;31m(01)\033[0m \033[1;37mDownload music - .mp3\033[0m'
echo ''
sleep 0.25; printf '    \033[1;31m(02)\033[0m \033[1;37mDownload video - .mp4\033[0m'
echo ''
sleep 0.25; printf '    \033[1;31m(03)\033[0m \033[1;37mDownload playlist\033[0m'
echo ''
echo ''
sleep 0.25; read -p $'     \033[1;31m(*)\033[0m \033[1;37mInsert an option:\033[0m ' option

function musicDownloader {
  sleep 0.5
  echo ''
  ./music-downloader.py
}
function videoDownloader {
  sleep 0.5
  echo ''
  ./video-downloader.py
}
function musicPlaylist {
  sleep 0.5
  echo ''
  ./music-playlist.py
}
function videoPlaylist {
  sleep 0.5
  echo ''
  ./video-playlist.py
}

function userOption {
  if [[ $option == 01 || $option == 1 ]];
  then
      musicDownloader
  elif [[ $option == 02 || $option == 2 ]];
  then
      videoDownloader
  elif [[ $option == 03 || $option == 3 ]];
  then
      echo ''
      sleep 0.25; printf '    \033[1;31m(01)\033[0m \033[1;37mIn music format - .mp3\033[0m'
      echo ''
      sleep 0.25; printf '    \033[1;31m(02)\033[0m \033[1;37mIn video format - .mp4\033[0m'
      echo ''
      echo ''
      sleep 0.25; read -p $'     \033[1;31m(*)\033[0m \033[1;37mInsert an option:\033[0m ' option
      if [[ $option == 01 || $option == 1 ]]
      then
          musicPlaylist
      elif [[ $option == 02 || $option == 2 ]]
      then
          videoPlaylist
      fi         
fi
}

userOption
