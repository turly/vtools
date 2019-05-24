#!/bin/bash
#
# sonarr/radarr on download video with non AAC first track, add one and make it the default.
# See the add-aac-audio script in this directory.
#
# turly 2019

WHEREAMI="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
AAAC="$WHEREAMI/add-aac-audio"      # add-aac-audio script in same dir as this one
LOGFILE=$WHEREAMI/saac.log

>>$LOGFILE echo `date`: sonarr-add-aac-audio.sh - $WHEREAMI - event type $sonarr_eventtype $radarr_eventtype

if [ "$sonarr_eventtype" == "Download" ]; then
    >>$LOGFILE echo `date`: "${AAAC}" "$sonarr_episodefile_path" --overwrite
    if ! "${AAAC}" --quiet "$sonarr_episodefile_path" --overwrite &>> $LOGFILE; then
        >&2 echo "Failed to add AAC audio to" $sonarr_episodefile_path
        >>$LOGFILE echo "Failed to add AAC audio to" $sonarr_episodefile_path
        exit 1
    fi
elif [ "$radarr_eventtype" == "Download" ]; then
    >>$LOGFILE echo `date`: "${AAAC}" "$radarr_moviefile_path" --overwrite
    if ! "${AAAC}" --quiet "$radarr_moviefile_path" --overwrite &> /dev/null; then
        >&2 echo "Failed to add AAC audio to" $radarr_moviefile_path
        >>$LOGFILE echo "Failed to add AAC audio to" $radarr_moviefile_path
        exit 1
    fi
fi

# Just assume all other event types are OK

exit 0

