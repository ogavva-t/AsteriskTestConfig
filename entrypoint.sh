#!/bin/bash

# Replace External Address Settings
sed -i "s/ENV_EXT_MEDIA_ADDRESS/$EXT_MEDIA_ADDRESS/" /etc/asterisk/pjsip.conf
sed -i "s/ENV_EXT_SIGNALING_ADDRESS/$EXT_SIGNALING_ADDRESS/" /etc/asterisk/pjsip.conf
sed -i "s/ENV_EXTEN_PASSWORD/$EXTEN_PASSWORD/" /etc/asterisk/pjsip.conf

sed -i "s/ENV_SIPTRUNK_IP/$SIPTRUNK_IP/" /etc/asterisk/pjsip_trunk.conf
sed -i "s/ENV_SIPTRUNK_PORT/$SIPTRUNK_PORT/" /etc/asterisk/pjsip_trunk.conf


# Start server.
echo 'Starting Asterisk...'
/usr/sbin/asterisk -vvvvvdddddc
