#!/usr/bin/env python3
from pytube import YouTube, Playlist
import os

exec = input('How many playlists you want to download: \n' + '\033[31m'+'>>'+'\033[0;0m ')
executions = int(exec)

for i in range(executions):
    playlist = Playlist(str(input('\n Enter the URL of the playlist: \n'+'\033[31m'+'>>'+'\033[0;0m ')))

    print('\n Enter the destination: ')
    destination = str(input('\033[31m'+'>>'+'\033[0;0m ')) or '.'
    
    for videos in playlist:
        yt = YouTube(videos)
        video = yt.streams.filter(only_audio=True).first()
        
        out_file = video.download(output_path=destination)
        
        base, ext = os.path.splitext(out_file)
        new_file = base + '.mp3'
        os.rename(out_file, new_file)
        
        print("\n" + yt.title + ' has been successfully downloaded.')
