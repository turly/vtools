# vtools
Some of my scripts for video file manipulation. ffmpeg and mkvtoolnix needed.

## fix-mkv-langs 
A tiny script which uses mkvmerge and mkvpropedit to change all streams with undefined languages (ie "language=und") to be "eng" (or a language of your choosing.)

## add-aac-audio
Another script which checks if the first audio stream in a mkv/mp4 file has more than 2 channels: if so, it downmixes that stream to an 2.0 160kbps AAC stream, which it then inserts as the first (and default) audio stream in the output file.  All of the original audio, video and subtitle streams are copied to the new file (including the original multichannel audio stream which was downmixed.)

## License
MIT License, see LICENSE file



