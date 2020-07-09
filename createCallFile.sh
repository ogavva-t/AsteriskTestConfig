#!/bin/bash

CHANNEL=$1
CALLERID=$2
EXTENSION=$3

NewCallFile=/tmp/makecall.call
echo "Channel: PJSIP/$CHANNEL" > $NewCallFile
echo "Context: MOH" >> $NewCallFile
echo "Extension: $EXTENSION" >> $NewCallFile
echo "Callerid: $CALLERID" >> $NewCallFile
echo "AlwaysDelete: yes" >> $NewCallFile

cp $NewCallFile /var/spool/asterisk/outgoing

