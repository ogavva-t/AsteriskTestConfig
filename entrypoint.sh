#!/bin/bash

# Replace External Address Settings
sed -i "s/ENV_EXT_MEDIA_ADDRESS/$EXT_MEDIA_ADDRESS/" /etc/asterisk/pjsip.conf
sed -i "s/ENV_EXT_SIGNALING_ADDRESS/$EXT_SIGNALING_ADDRESS/" /etc/asterisk/pjsip.conf

# Start server.
echo 'Starting Asterisk...'
/usr/sbin/asterisk -vvvvvdddddc
