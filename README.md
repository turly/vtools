# vtools
Some of my scripts for video file manipulation. ffmpeg and mkvtoolnix needed.

Careful with these scripts -- try them out on COPIES of your video files first!

## fix-mkv-langs 
A tiny script which uses mkvmerge and mkvpropedit to change all streams with undefined languages (ie "language=und") to be "eng" (or a language of your choosing.)

## add-aac-audio
Another script which checks if the first audio stream in a mkv/mp4 file has more than 2 channels: if so, it downmixes that stream to a 2.0 160kbps AAC stream, which it then inserts as the first (and default) audio stream in the output file.  All of the original audio, video and subtitle streams are copied to the new file (including the original multichannel audio stream.)

Also has facility for deleting unwanted audio streams.

Apologies, this script has too many hardcoded options and does too much.

## sonarr-add-aac-audio.sh
A Sonarr/Radarr post-processing script which will run fix-mkv-langs and add-aac-audio on Sonarr/Radarr downloads.  This needs to be set up in Sonarr's Settings->Connect page, enable the "Download"/"Import" and "Upgrade" options.

## License
(C) 2019 turly o'connor, MIT Licensed, see LICENSE file



