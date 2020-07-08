#!/bin/sh

NewCallFile=/tmp/makecall.call
(
cat <<'EOF_CALLFILE'
channel: PJSIP/9001
Extension: 05011111111
application: Playback
data: Demo-congrats
EOF_CALLFILE
) > $NewCallFile

cp $NewCallFile /var/spool/asterisk/outgoing
