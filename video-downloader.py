#!/usr/bin/env python3
from pytube import YouTube
import os

exec = input('How many videos you want to download: \n'+'\033[31m'+'>>'+'\033[0;0m ')
executions = int(exec)

for i in range(executions):
    
    yt = YouTube(str(input('\n Enter the URL of the video: \n'+'\033[31m'+'>>'+'\033[0;0m ')))
    
    video = yt.streams.get_highest_resolution()
    
    print('\n Enter the destination: ')
    destination = str(input('\033[31m'+'>>'+'\033[0;0m ')) or '.'
    
    out_file = video.download(output_path=destination)
    
    base, ext = os.path.splitext(out_file)
    new_file = base + '.mp4'
    os.rename(out_file, new_file)
    
    print('\n' + yt.title + ' has been successfully downloaded.') 
