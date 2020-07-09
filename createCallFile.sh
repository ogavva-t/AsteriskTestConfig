#!/bin/sh

NewCallFile=/tmp/makecall.call
(
cat <<'EOF_CALLFILE'
channel: PJSIP/9001
Context: MOH
Extension: 05011111111
Callerid: 05099999999
AlwaysDelete: yes

EOF_CALLFILE
) > $NewCallFile

cp $NewCallFile /var/spool/asterisk/outgoing

