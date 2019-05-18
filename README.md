# vtools
Some of my scripts for video file manipulation. ffmpeg and mkvtoolnix needed.

## fix-mkv-langs 
A tiny script which uses mkvmerge and mkvpropedit to change all streams with undefined languages (ie "language=und") to be "eng" (or a language of your choosing.)

## add-acc-audio
Another script which checks if the first audio stream in a mkv/mp4 file has more than 2 channels: if so, it downmixes that stream to an AAC 2.0 160kbps audio stream, which it then inserts as the first (and default) audio stream.  All of the original audio, video and subtitle streams remain in the file (including the multichannel audio stream which was downmixed.)

## License
MIT License, see LICENSE file



